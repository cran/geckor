## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  error = TRUE,
  collapse = TRUE,
  comment = "#>"
)

Sys.sleep(60)

## ----setup--------------------------------------------------------------------
library(geckor)

## ----snapshot-----------------------------------------------------------------
coin_history_snapshot(
  coin_id = "bitcoin",
  date = as.Date("2021-01-01"),
  vs_currencies = c("usd", "eur", "gbp")
)

## ----date-range---------------------------------------------------------------
# Range of less than 1 day:
coin_history_range(
  coin_id = "bitcoin", 
  vs_currency = "usd",
  from = as.POSIXct("2020-01-01 10:00:10"),
  to = as.POSIXct("2020-01-01 20:45:10")
)

# Range of >90 days:
coin_history_range(
  coin_id = "bitcoin", 
  vs_currency = "usd",
  from = as.POSIXct("2021-01-01 00:00:00"),
  to = as.POSIXct("2021-05-01 00:00:00")
)

## ----last-n-days--------------------------------------------------------------
coin_history(
  coin_id = "bitcoin",
  vs_currency = "usd",
  days = 7
)

## ----all-history--------------------------------------------------------------
coin_history(
  coin_id = "bitcoin",
  vs_currency = "usd",
  days = "max"
)

## ----interval-usage-----------------------------------------------------------
# Within-day data, with `interval = "daily"`:
coin_history(
  coin_id = "bitcoin",
  vs_currency = "usd",
  days = 1, 
  interval = "daily"
)

# Less than 90 days, with `interval = "daily"`:
coin_history(
  coin_id = "bitcoin",
  vs_currency = "usd",
  days = 10, 
  interval = "daily"
)

# More than 90 days, with `interval = "daily"`:
coin_history(
  coin_id = "bitcoin",
  vs_currency = "usd",
  days = 100, 
  interval = "daily"
)

## ----ohlc---------------------------------------------------------------------
# 30-minutes granularity:
coin_history_ohlc(
  coin_id = "bitcoin", 
  vs_currency = "usd",
  days = 1
)

# 4-hours granularity:
coin_history_ohlc(
  coin_id = "bitcoin", 
  vs_currency = "usd",
  days = 7
)

# 4-days granularity:
coin_history_ohlc(
  coin_id = "bitcoin", 
  vs_currency = "usd",
  days = 90
)

# 4-days granularity:
coin_history_ohlc(
  coin_id = "bitcoin", 
  vs_currency = "usd",
  days = "max"
)

## ----coin-history-multiple-coins----------------------------------------------
coin_history(
  coin_id = c("bitcoin", "cardano", "polkadot"),
  vs_currency = "usd",
  days = 2, 
  interval = "daily"
)

