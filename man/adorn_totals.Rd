% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/adorn_totals.R
\name{adorn_totals}
\alias{adorn_totals}
\title{Append a totals row and/or column to a data.frame.}
\usage{
adorn_totals(dat, where = "row", fill = "-", na.rm = TRUE, name = "Total")
}
\arguments{
\item{dat}{an input data.frame with at least one numeric column.  If given a list of data.frames, this function will apply itself to each data.frame in the list (designed for 3-way \code{tabyl} lists).}

\item{where}{one of "row", "col", or \code{c("row", "col")}}

\item{fill}{if there are multiple non-numeric columns, what string should fill the bottom row of those columns?}

\item{na.rm}{should missing values (including NaN) be omitted from the calculations?}

\item{name}{name of the totals column or row}
}
\value{
Returns a data.frame augmented with a totals row, column, or both.  The data.frame is now also of class \code{tabyl} and stores information about the attached totals and underlying data in the tabyl attributes.
}
\description{
This function excludes the first column of the input data.frame, assuming it's a descriptive variable not to be summed.  Non-numeric columns are converted to character class and have a user-specified fill character inserted in the totals row.
}
\examples{
mtcars \%>\%
  tabyl(am, cyl) \%>\%
  adorn_totals()
}
