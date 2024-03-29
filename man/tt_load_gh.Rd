% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tt_load_gh.R
\name{tt_load_gh}
\alias{tt_load_gh}
\title{Load TidyTuesday data from Github}
\usage{
tt_load_gh(x, week, auth = github_pat())
}
\arguments{
\item{x}{string representation of the date of data to pull, in
YYYY-MM-dd format, or just numeric entry for year}

\item{week}{left empty unless x is a numeric year entry, in which case the
week of interest should be entered}

\item{auth}{github Personal Access Token. See PAT section for more
information}
}
\value{
a 'tt' object. This contains the files available for the week,
 readme html, and the date of the TidyTuesday.
}
\description{
Pulls the readme and URLs of the data from the TidyTuesday
github folder based on the date provided
}
\section{PAT}{


A Github PAT is a personal Access Token. This allows for signed queries to
the github api, and increases the limit on the number of requests allowed
from 60 to 5000. Follow instructions from
<https://happygitwithr.com/github-pat.html> to set the PAT.
}

\examples{

# check to make sure there are requests still available
if(rate_limit_check(quiet = TRUE) > 30 & interactive()){
 tt_gh <- tt_load_gh("2019-01-15")

 ## readme attempts to open the readme for the weekly dataset
 readme(tt_gh)

 agencies <- tt_download(
    tt_gh,
    files = "agencies.csv"
 )


}

}
