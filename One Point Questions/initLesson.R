assign("cars", openintro::cars, envir=globalenv())
assign("mpg.midsize", cars[cars$type=="midsize","mpgCity"], envir=globalenv())

x <- 7 + 5

swirl_options(swirl_logging = TRUE)