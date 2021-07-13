## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

Sys.sleep(60)

## ----setup--------------------------------------------------------------------
library(geckor)

## ----supported-coins----------------------------------------------------------
coins <- supported_coins()

# number of supported coins:
nrow(coins)

head(coins, 10)

## ----supported-exchanges------------------------------------------------------
exchanges <- supported_exchanges()

# number of supported exchanges:
nrow(exchanges)

head(exchanges, 10)

## ----supported-currencies-----------------------------------------------------
currencies <- supported_currencies()
currencies

