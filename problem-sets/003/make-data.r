# Setup -----------------------------------------------------------------------
  # Required packages
  suppressPackageStartupMessages({
    library(data.table)
    library(here)
  })

# Source ----------------------------------------------------------------------
  # Original Card-Krueger data:
  # https://davidcard.berkeley.edu/data_sets/njmin.zip
  raw_dir = here('problem-sets', '003', 'data-raw')
  raw_file = file.path(raw_dir, 'public.dat')

  # Download the original archive only if the raw flat file is missing.
  if (!file.exists(raw_file)) {
    dir.create(raw_dir, recursive = TRUE, showWarnings = FALSE)
    zip_file = tempfile(fileext = '.zip')
    download.file(
      url = 'https://davidcard.berkeley.edu/data_sets/njmin.zip',
      destfile = zip_file,
      mode = 'wb'
    )
    unzip(
      zip_file,
      files = c('public.dat', 'codebook', 'read.me'),
      exdir = raw_dir
    )
  }

# Load data -------------------------------------------------------------------
  col_names = tolower(strsplit(
    paste(
      'sheet CHAIN CO_OWNED STATE SOUTHJ CENTRALJ NORTHJ PA1 PA2 SHORE NCALLS',
      'EMPFT EMPPT NMGRS WAGE_ST INCTIME FIRSTINC BONUS PCTAFF MEAL OPEN',
      'HRSOPEN PSODA PFRY PENTREE NREGS NREGS11 TYPE2 STATUS2 DATE2 NCALLS2',
      'EMPFT2 EMPPT2 NMGRS2 WAGE_ST2 INCTIME2 FIRSTIN2 SPECIAL2 MEALS2',
      'OPEN2R HRSOPEN2 PSODA2 PFRY2 PENTREE2 NREGS2 NREGS112'
    ),
    ' +'
  )[[1]])

  ck_dt = fread(
    raw_file,
    col.names = col_names,
    na.strings = '.'
  )

# Clean wide data -------------------------------------------------------------
  # The original public data have two stores with the same sheet number.
  ck_dt[sheet == 407, sheet := c(4071, 4072)]

  ck_dt[, store_id := sheet]
  ck_dt[, chain_name := fcase(
    chain == 1, 'Burger King',
    chain == 2, 'KFC',
    chain == 3, 'Roy Rogers',
    chain == 4, "Wendy's"
  )]
  ck_dt[, state_abb := fifelse(state == 1, 'NJ', 'PA')]
  ck_dt[, state_name := fifelse(state == 1, 'New Jersey', 'Pennsylvania')]
  ck_dt[, market := fcase(
    southj == 1, 'Southern NJ',
    centralj == 1, 'Central NJ',
    northj == 1, 'Northern NJ',
    shore == 1, 'NJ shore',
    pa1 == 1, 'PA: Philadelphia suburbs',
    pa2 == 1, 'PA: Easton',
    default = NA_character_
  )]
  ck_dt[, nj := state]
  ck_dt[, company_owned := co_owned]
  ck_dt[, affected_pct := pctaff / 100]
  ck_dt[, fte_pre := empft + 0.5 * emppt + nmgrs]
  ck_dt[, fte_post := empft2 + 0.5 * emppt2 + nmgrs2]

# Reshape into a two-period panel ---------------------------------------------
  pre_dt = ck_dt[
    ,
    .(
      store_id,
      state_abb,
      state_name,
      nj,
      chain_name,
      market,
      company_owned,
      affected_pct,
      period = 'Before',
      post = 0L,
      nj_after = 0L,
      min_wage = 4.25,
      fte_employment = fte_pre,
      starting_wage = wage_st,
      hours_open = hrsopen,
      soda_price = psoda,
      fries_price = pfry,
      entree_price = pentree,
      registers = nregs,
      registers_11am = nregs11
    )
  ]

  post_dt = ck_dt[
    ,
    .(
      store_id,
      state_abb,
      state_name,
      nj,
      chain_name,
      market,
      company_owned,
      affected_pct,
      period = 'After',
      post = 1L,
      nj_after = nj,
      min_wage = fifelse(nj == 1, 5.05, 4.25),
      fte_employment = fte_post,
      starting_wage = wage_st2,
      hours_open = hrsopen2,
      soda_price = psoda2,
      fries_price = pfry2,
      entree_price = pentree2,
      registers = nregs2,
      registers_11am = nregs112
    )
  ]

  ps3_dt = rbindlist(list(pre_dt, post_dt), use.names = TRUE)
  ps3_dt[, period := factor(period, levels = c('Before', 'After'))]
  setorder(ps3_dt, store_id, post)

# Keep a balanced panel for the main assignment --------------------------------
  complete_stores = ps3_dt[
    ,
    .(complete_fte = all(!is.na(fte_employment))),
    by = store_id
  ][complete_fte == TRUE, store_id]

  ps3_dt = ps3_dt[store_id %in% complete_stores]

  # Round dollar and employment variables for readability.
  ps3_dt[, `:=`(
    fte_employment = round(fte_employment, 2),
    starting_wage = round(starting_wage, 2),
    soda_price = round(soda_price, 2),
    fries_price = round(fries_price, 2),
    entree_price = round(entree_price, 2),
    affected_pct = round(affected_pct, 3)
  )]

# Save cleaned data -----------------------------------------------------------
  fwrite(
    ps3_dt,
    here('problem-sets', '003', 'data-ps3.csv')
  )
