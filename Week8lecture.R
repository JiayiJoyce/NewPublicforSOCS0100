library(RSelenium)


driver <- rsDriver(port = 4567L, browser = "chrome")
remDr <- driver$client