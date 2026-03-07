# Setup ----------------------------------------------------------------------------------
  # Required packages
  library(pacman)
  p_load(data.table, here)

# Load data ------------------------------------------------------------------------------
  # Problem-set 1 data
  ps1_dt = fread(
    here('problem-sets', '001', 'data-ps1.csv')
  )
  # Grab county tax variables from the original raw county-characteristics file
  tax_dt = fread(
    here('problem-sets', '001', 'data-raw', 'county-characteristics.csv'),
    select = c('cty', 'taxrate', 'tax_st_diff_top20')
  )

# Clean data -----------------------------------------------------------------------------
  # Rename county identifier
  setnames(tax_dt, 'cty', 'county_code')
  # Drop rows with missing tax variables
  tax_dt = na.omit(tax_dt)
  # Sort tax data
  setorder(tax_dt, county_code)
  # Merge the tax variables onto the PS1 dataset
  ps3_dt = merge(ps1_dt, tax_dt, by = 'county_code', all.x = TRUE)
  # Keep only complete cases
  ps3_dt = na.omit(ps3_dt)
  # Sort rows and restore the PS1 column order
  setorder(ps3_dt, county_code, income_quartile)
  setcolorder(
    ps3_dt,
    c(names(ps1_dt), 'taxrate', 'tax_st_diff_top20')
  )
  # Change tax variable names
  setnames(
    ps3_dt,
    old = c('taxrate', 'tax_st_diff_top20'),
    new = c('tax_rate', 'tax_prog')
  )
  # Make percent variables into proportions
  ps3_dt[, `:=`(
    pct_uninsured = pct_uninsured / 100,
    pct_religious = pct_religious / 100,
    pct_black = pct_black / 100,
    pct_hispanic = pct_hispanic / 100
  )]

# Save cleaned data ----------------------------------------------------------------------
  # Save extracted tax variables
  fwrite(
    tax_dt,
    here('problem-sets', '003', 'data-raw', 'county-tax.csv')
  )
  # Save final problem-set dataset
  fwrite(
    ps3_dt,
    here('problem-sets', '003', 'data-ps3.csv')
  )
