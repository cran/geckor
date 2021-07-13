## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

Sys.sleep(60)

## ----setup--------------------------------------------------------------------
library(geckor)

## ----current-price------------------------------------------------------------
prices <- current_price(
  coin_ids = c("cardano", "tron", "polkadot"),
  vs_currencies = c("usd", "eur", "gbp")
)

prices

## ----exchange-rates-----------------------------------------------------------
all_rates <- exchange_rate(currency = NULL)
head(all_rates, 10)

some_rates <- exchange_rate(currency = c("btc", "usd", "rub"))
some_rates

## ----current-market-----------------------------------------------------------
cm <- current_market(
  coin_ids = c("cardano", "tron", "polkadot"),
  vs_currency = "usd"
)

dplyr::glimpse(cm)

## ----coin-tickers-------------------------------------------------------------
cardano_tickers <- coin_tickers(
  coin_id = "cardano",
  exchange_id = "binance"
)

dplyr::glimpse(cardano_tickers)

## ----trending-coins-----------------------------------------------------------
trending_coins()

