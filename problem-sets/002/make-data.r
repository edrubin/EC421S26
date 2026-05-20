# Setup ----------------------------------------------------------------------------------
# Install fred package
# pak::pkg_install('sboysel/fredr')
# Load packages
pacman::p_load(here, data.table, fredr)

# Download data --------------------------------------------------------------------------
# Download housing starts
housing =
  fredr(
    series_id = 'HOUST',
    observation_start = as.Date('1990-01-01'),
    observation_end = as.Date('2025-12-31'),
    frequency = 'm'
  )
# Download 30-year mortgage rate
mortgage =
  fredr(
    series_id = 'MORTGAGE30US',
    observation_start = as.Date('1990-01-01'),
    observation_end = as.Date('2025-12-31'),
    frequency = 'm'
  )
# Download CPI
cpi =
  fredr(
    series_id = 'CPIAUCSL',
    observation_start = as.Date('1990-01-01'),
    observation_end = as.Date('2025-12-31'),
    frequency = 'm'
  )
# Download industrial production
ind =
  fredr(
    series_id = 'INDPRO',
    observation_start = as.Date('1990-01-01'),
    observation_end = as.Date('2025-12-31'),
    frequency = 'm'
  )
# Download unemployment rate
unemp =
  fredr(
    series_id = 'UNRATE',
    observation_start = as.Date('1990-01-01'),
    observation_end = as.Date('2025-12-31'),
    frequency = 'm'
  )
# Download NBER recession indicator
recession =
  fredr(
    series_id = 'USREC',
    observation_start = as.Date('1990-01-01'),
    observation_end = as.Date('2025-12-31'),
    frequency = 'm'
  )
# All to data.table
setDT(housing)
setDT(mortgage)
setDT(cpi)
setDT(ind)
setDT(unemp)
setDT(recession)

# Join data and save ---------------------------------------------------------------------
# Merge datasets
full_dt =
  merge(
    x = housing[, .(date, housing = value)],
    y = mortgage[, .(date, mortgage_rate = value)],
    by = 'date',
    all = TRUE
  ) |>
  merge(
    y = cpi[, .(date, cpi = value)],
    by = 'date',
    all = TRUE
  ) |>
  merge(
    y = ind[, .(date, industry = value)],
    by = 'date',
    all = TRUE
  ) |>
  merge(
    y = unemp[, .(date, unemp = value)],
    by = 'date',
    all = TRUE
  ) |>
  merge(
    y = recession[, .(date, recession = value)],
    by = 'date',
    all = TRUE
  )
# Add "time"
setorder(full_dt, date)
full_dt[, time := seq_len(.N)]
# Add "country"
full_dt[, country := 'US']
# Re-arrange columns
setcolorder(full_dt, c('date', 'time', 'country'))
# Save
fwrite(
  x = full_dt,
  file = here('problem-sets', '002', 'data-ps2.csv')
)
