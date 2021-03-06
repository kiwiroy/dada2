% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multiSample.R
\name{mergeSequenceTables}
\alias{mergeSequenceTables}
\title{Merge two or more sample-by-sequence observation matrices.}
\usage{
mergeSequenceTables(table1, table2, ..., repeats = "error",
  orderBy = "abundance")
}
\arguments{
\item{table1}{(Required). Named integer matrix. Rownames correspond to samples
and column names correspond to sequences. The output of \code{\link{makeSequenceTable}}.}

\item{table2}{(Required). Named integer matrix. Rownames correspond to samples
and column names correspond to sequences. The output of \code{\link{makeSequenceTable}}.}

\item{...}{(Optional). Additional sequence tables.}

\item{repeats}{(Optional). Default "error".
Specifies how merging should proceed in the presence of repeated sample names.
Valid values: "error", "sum".
If "sum", then samples with the same name are summed together in the merged table.}

\item{orderBy}{(Optional). \code{character(1)}. Default "abundance".
Specifies how the sequences (columns) of the returned table should be ordered (decreasing).
Valid values: "abundance", "nsamples", NULL.}
}
\value{
Named integer matrix.
A row for each sample, and a column for each unique sequence across all the samples.
Note that the columns are named by the sequence which can make display unwieldy.
}
\description{
This function combines sequence tables together into one merged sequences table.
}
\examples{

\dontrun{
  mergetab <- mergeSequenceTables(seqtab1, seqtab2, seqtab3)
}

}
\seealso{
\code{\link{makeSequenceTable}}
}
