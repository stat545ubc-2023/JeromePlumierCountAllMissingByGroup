% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/count_all_missing_by_group.R
\name{count_all_missing_by_group}
\alias{count_all_missing_by_group}
\title{Count missing values for all columns by group}
\usage{
count_all_missing_by_group(data, group_col, .groups = "drop")
}
\arguments{
\item{data}{Data in data.frame or tibble format}

\item{group_col}{Column in \code{data} to group by}

\item{.groups}{(OPTIONAL) Controls whether the
output data frame is grouped. By default,
drops all levels of grouping (\code{"drop"}). Specify
\code{"keep"} to keep the output data frame grouped by
\code{group}. See \code{summarize()} documentation in
\code{dplyr} for a full list of options.}
}
\value{
A data frame or tibble with the
levels of \code{group}, and the  number of NAs within
each level of \code{group} for all columns in
\code{data} except \code{group}.
}
\description{
Given a data frame \code{data} and a
column \code{group}, \code{count_all_missing_by_group()} creates
a new data frame with one row per level of \code{group}.
The first column of the output data frame
contains the levels of \code{group}, and the rest of
the columns contain the number of missing values for
all columns in \code{data} except \code{group}.
}
\details{
This function is
a wrapper around the \code{group_by()} and
\code{summarize()} functions in the \code{dplyr} package.
}
\examples{
# Let's test our function using the `airquality` dataset,
#and group by `Month`:
count_all_missing_by_group(airquality, Month)

# This example has the same output as the last example, but shows off
#an alternative way of invoking the `count_all_missing_by_group()`:
#piping the dataset into the function.
airquality |> count_all_missing_by_group(Month)

# The optional `.groups` argument allows us to keep the output grouped
#by the grouping column. See example below; notice how the output
#is a grouped tibble, rather than the ungrouped tibble output
#of the earlier examples:
count_all_missing_by_group(airquality, Month, .groups = "keep")

}
