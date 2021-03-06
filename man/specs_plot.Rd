% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/specs_plots.R
\name{specs_plot}
\alias{specs_plot}
\title{Draw a specification plot.}
\usage{
specs_plot(
  coefs,
  palette = "green",
  ratio = 2,
  coef_ylabel = "Coefficient estimate",
  coef_ylim = NULL,
  coef_xlabel = NULL,
  label_text_size = NULL,
  point_size = NULL,
  error_alpha = NULL,
  error_geom = NULL,
  error_width = 0,
  hline = NULL,
  control_geom = "rect",
  control_spacing = NULL,
  control_text_size = 9,
  trim_top = 0,
  ...
)
}
\arguments{
\item{coefs}{A dataframe with the following components:
names of indicators for specs, \code{coef}, \code{error_low}, \code{error_high}, \code{pval}}

\item{palette}{Change the palette.
Default to \code{"green"} for green-shaded plot.
Change to \code{"brown"} for brown-shaded plot.}

\item{ratio}{A numeric scalar indicating the height ratio of the
coefficient plot relative to the control grid plot.}

\item{coef_ylabel}{A string specifying the y-axis label on the coefficient panel.
Default to \code{"Coefficient estimate"}.}

\item{coef_ylim}{A numeric vector of length two indicating the
minimum and maximum values of the y-axis in the coefficient plot.
Default to \code{NULL} to use \code{ggplot2} default.}

\item{coef_xlabel}{A string specifying the x-axis label on the coefficient panel.
Default to \code{NULL} for none.}

\item{label_text_size}{A numeric scalar indicating how large the text for the
axis labels should be.
Default to \code{NULL} for \code{ttr::theme_tt()} default.}

\item{point_size}{A numeric scalar indicating the size of the coefficient estimate points.
Default to \code{NULL} and set according to the number of specs.}

\item{error_alpha}{A numeric scalar indicating the alpha of the error geom.
Default to \code{NULL} and set to \code{0.5} for \code{"errorbar"} and \code{0.21} for \code{"ribbon"}.}

\item{error_geom}{A string indicating the type of geom that should be used to
depict confidence intervals on coefficient estimates.
Currently supported are \code{"ribbon"}, \code{"errorbar"}, and \code{"none"}.
Default to \code{NULL} and set to "errorbar"\verb{if fewer than 100 specs and to}"ribbon"` otherwise.}

\item{error_width}{A numeric scalar indicating the width of the error bar.
Default to 0 and only applicable when \code{error_geom} is set to \code{"errorbar"}.}

\item{hline}{A numeric scalar indicating a horizontal line at value \code{hline}.
Default to \code{NULL} for none.}

\item{control_geom}{A string indicating the geom that should be used to
indicate the presence of controls.
Currently supported are \code{"circle"} and \code{"rect"}.
Default to \code{"rect"}.}

\item{control_spacing}{A numeric scalar indicating how large the control geoms
should be.
For \code{control_geom=="circle"}, this is the diameter of the circle.
For \code{control_geom=="rect"}, this is the width of the rectangle.
Default to \code{NULL} and set to \code{0.75} if fewer than 40 specs and \code{1} otherwise.}

\item{control_text_size}{A numeric scalar indicating how large the
control name text should be.
Default to 9.}

\item{trim_top}{A numeric scalar indicating how close the bottom panel
(displaying presence of controls) should be to the
top panel (displaying presence of coefficients).
Useful when dealing with large CIs.
Default to \code{-1}.}

\item{...}{Other arguments passed to \code{ttr::theme_tt()}}
}
\value{
A list of 3 \code{ggplot2} objects, \code{coef_plot} depicting the coefficient plot,
\code{control_plot} depicting the control panel, and \code{spec_plot} depicting the
specification plot with both coefficient and control panels
}
\description{
\code{specs_plot} produces the specification plot with 2 panels: coefficient and control grid.
}
