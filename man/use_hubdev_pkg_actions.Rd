% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/use_hubdev_pkg_actions.R
\name{use_hubdev_pkg_actions}
\alias{use_hubdev_pkg_actions}
\title{Add standard GitHub Actions workflows}
\usage{
use_hubdev_pkg_actions()
}
\description{
Downloads standard r-lib GitHub Action workflows and writes them to the
\code{.github/workflows} directory for:
\itemize{
\item standard R CMD CHECK \href{https://github.com/r-lib/actions/blob/v2-branch/examples/check-standard.yaml}{(\code{check-standard})}
\item test coverage \href{https://github.com/r-lib/actions/blob/v2-branch/examples/test-coverage.yaml}{(\code{test-coverage})}
\item linting with \code{lintr} \href{https://github.com/r-lib/actions/blob/v2-branch/examples/lint.yaml}{(\code{lint})}
}
}
