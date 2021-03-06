% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ghfd_get_available_tickers_from_ftp.R
\name{ghfd_get_available_tickers_from_ftp}
\alias{ghfd_get_available_tickers_from_ftp}
\title{Function to get available tickers from ftp}
\usage{
ghfd_get_available_tickers_from_ftp(my.date = "2015-11-03",
  type.market = "equity", type.data = "trades", dl.dir = "ftp files",
  max.dl.tries = 10)
}
\arguments{
\item{my.date}{A single date to check tickers in ftp (e.g. '2015-11-03')}

\item{type.market}{The type of market to download data from ('equity', 'equity-odds','options', 'BMF' ).}

\item{type.data}{The type of financial data to download and aggregate ('trades' or 'orders').}

\item{dl.dir}{The folder to download the zip files (default = 'ftp files')}

\item{max.dl.tries}{Maximum attempts to download the files from ftp}
}
\value{
A data.frame with the tickers, number of found trades and file name
}
\description{
This function will read the Bovespa ftp for a given market/date and output
a numeric vector where the names of the elements represents the different tickers
and the numeric values as the number of trades for each ticker
}
\examples{

\dontrun{
 df.tickers <- ghfd_get_available_tickers_from_ftp(my.date = '2015-11-03',
 type.market = 'BMF')

 print(head(df.tickers))
}
}
