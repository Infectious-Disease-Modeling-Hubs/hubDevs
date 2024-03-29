% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/use_hubdev_pkgdown.R
\name{use_hubdev_pkgdown}
\alias{use_hubdev_pkgdown}
\title{Configure hubverse pkgdown site}
\usage{
use_hubdev_pkgdown(add_logo = FALSE)
}
\arguments{
\item{add_logo}{Logical. Whether to add the logo to the package.}
}
\description{
The function performs a number of actions to configure a hubverse package's
pkgdown site to use the \code{hubStyle} template for docs styling.
\itemize{
\item Runs \code{\link[=use_pkgdown]{use_pkgdown()}} to initialise pkgdown documentation.
\item Runs \code{\link[=use_github_pages]{use_github_pages()}} to initialise GitHub Pages for the package.
\item Adds a GitHub Action workflow for building pkgdown documentation and deploying
to GitHub Pages (productions) and Netlify (PR previews) using
\code{use_hubdev_pkgdown_action()}.
\item Adds the \code{hubStyle} repository to the \code{DESCRIPTION}'s
\code{Config/Needs/website} property using \code{add_website_needs()}.
\item Creates a favicon for the package using the \code{hubStyle} logo.
\item Overwrites standard \verb{_pkgdown.yml} file with customised configuration to
use the hubverse \code{hubStyle} package for docs styling.
}
}
