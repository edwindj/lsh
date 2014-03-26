\name{lshash}
\alias{lshash}
\title{Create a locality sensitive hash}
\usage{
lshash(data, k = 10, L = min(ncol(data), 10), ...)
}
\arguments{
  \item{data}{\code{matrix} data to be added}

  \item{k}{number of projections per hashtable}

  \item{L}{number of hashtable}

  \item{...}{not used}
}
\description{
Create a locality sensitive hash
}

