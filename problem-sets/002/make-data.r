# Setup ----------------------------------------------------------------------------------
  # Required packages
  library(pacman)
  p_load(fastverse, lubridate, stringr, fixest, here)

# Load data ------------------------------------------------------------------------------
  # Unemployment
  ue = here('problem-sets', '002', 'data-raw', 'UNRATE.csv') |> fread()
  # CPI
  cpi = here('problem-sets', '002', 'data-raw', 'CPIAUCSL.csv') |> fread()
  # GDP
  gdp = here('problem-sets', '002', 'data-raw', 'A939RX0Q048SBEA.csv') |> fread()
  # Recession probability
  rec = here('problem-sets', '002', 'data-raw', 'RECPROUSM156N.csv') |> fread()

# Clean data -----------------------------------------------------------------------------
  # Clean names
  setnames(ue, c('date', 'unemp_rate'))
  setnames(cpi, c('date', 'cpi'))
  setnames(gdp, c('date', 'gdppc'))
  setnames(rec, c('date', 'rec_prob'))
  # Aggregate ue, cpi, and rec to quarterly
  ue[, q := quarter(date)]
  cpi[, q := quarter(date)]
  rec[, q := quarter(date)]
  ue =
    ue[, .(
      date = min(date),
      unemp_rate = mean(unemp_rate, na.rm = TRUE) |> round(2)
    ), by = .(year(date), q)]
  cpi =
    cpi[, .(
      date = min(date),
      cpi = mean(cpi, na.rm = TRUE) |> round(2)
    ), by = .(year(date), q)]
  rec =
    rec[, .(
      date = min(date),
      rec_prob = mean(rec_prob, na.rm = TRUE) |> round(2)
    ), by = .(year(date), q)]
  cpi[, c('q', 'year') := NULL]
  rec[, c('q', 'year') := NULL]
  ue[, year := NULL]
  # Merge datasets
  full_dt =
    gdp |>
    merge(ue, by = 'date', all.x = TRUE) |>
    merge(cpi, by = 'date', all.x = TRUE) |>
    merge(rec, by = 'date', all.x = TRUE)
  # Keep 1970 onward
  full_dt = full_dt[year(date) >= 1970]
  # Add time trend
  full_dt[, time := 1:.N]
  # Add unit column for panel
  full_dt[, country := 'US']
  # Reorder columns
  setcolorder(
    full_dt,
    c('time', 'date', 'q', 'country', 'unemp_rate', 'cpi', 'gdppc', 'rec_prob')
  )
  # Rescale GDP
  full_dt[, gdppc := gdppc / 1e3]

# Save cleaned dataset -------------------------------------------------------------------
  # Save
  fwrite(
    full_dt,
    here('problem-sets', '002', 'data-ps2.csv')
  )
