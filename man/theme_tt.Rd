% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ttthemes.R
\name{theme_tt}
\alias{theme_tt}
\title{ttecon theme}
\usage{
theme_tt(
  style = "slide",
  palette = "green",
  font = NULL,
  title_font = NULL,
  subtitle_font = NULL,
  xaxis = TRUE,
  yaxis = FALSE,
  axis_text_color = "style",
  axis_title_color = "style",
  xgrid = FALSE,
  ygrid = TRUE,
  xgrid_minor = FALSE,
  ygrid_minor = FALSE,
  legend = FALSE,
  legend_title = FALSE,
  axis_title = TRUE,
  axis_title_just = "mm",
  xticks = FALSE,
  yticks = FALSE,
  title_size = NULL,
  subtitle_size = NULL,
  caption_size = NULL,
  legend_size = NULL,
  legend_title_size = NULL,
  strip_size = NULL,
  axis_title_size = NULL,
  axis_text_size = NULL,
  thick_line = NULL,
  thin_line = NULL,
  panel_spacing = NULL,
  legend_position = "bottom",
  font_scale = "normal"
)
}
\arguments{
\item{style}{Change the theme style.
Default to \code{"slide"} for default slide fonts and themed axis title and text.
Change to \code{"paper"} for default paper fonts and black axis title and text.}

\item{palette}{Change the palette.
Default to \code{"green"} for green-shaded lines.
Change to \code{"brown"} for brown-shaded lines.}

\item{font}{Change the general font family.
Default to \code{NULL} to use the defaults based on \code{style}.}

\item{title_font}{Change the title font family.
Default to \code{NULL} to use the defaults based on \code{style}.}

\item{subtitle_font}{Change the subtitle font family.
Default to \code{NULL} to use the defaults based on \code{style}.}

\item{xaxis}{x-axis line if \code{TRUE}.
Default to \code{TRUE},
The line is colored "green" for a green palette and is colored "brown" for a brown palette.}

\item{yaxis}{y-axis line if \code{TRUE}.
Default to \code{FALSE}.
The line is colored "green" for a green palette and is colored "brown" for a brown palette.}

\item{axis_text_color}{define the color style for axis text.
If \code{"style"} then use a saturated palette color.
Default to \code{"style"}.}

\item{axis_title_color}{define the color style for axis title.
If \code{"style"} then use a saturated palette color.
Default to \code{"style"}.}

\item{xgrid}{Turn on major x-grid-lines if \code{TRUE}.
Default to \code{FALSE}.
The line is colored "gradient green" for a green palette and is colored "gradient brown" for a brown palette.}

\item{ygrid}{Turn on major y-grid-lines if \code{TRUE}.
Default to \code{TRUE}.
The line is colored "gradient green" for a green palette and is colored "gradient brown" for a brown palette.}

\item{xgrid_minor}{Turn on minor x-grid-lines if \code{TRUE}.
Default to \code{FALSE}.
The line is colored "gradient green" for a green palette and is colored "gradient brown" for a brown palette.}

\item{ygrid_minor}{Turn on minor y-grid-lines if \code{TRUE}.
Default to \code{FALSE}.
The line is colored "gradient green" for a green palette and is colored "gradient brown" for a brown palette.}

\item{legend}{Allow legend if \code{TRUE}.
Default to \code{FALSE}.}

\item{legend_title}{Allow legend title if \code{TRUE}.
Default to \code{FALSE}.}

\item{axis_title}{Allow axis titles if \code{TRUE}.
Default to \code{TRUE}.}

\item{axis_title_just}{Axis title font justification, one of \verb{[blmcrt]}
Default to \code{"mm"}.}

\item{xticks}{Add x-ticks if \code{TRUE}.
Default to \code{FALSE}.}

\item{yticks}{Add y-ticks if \code{TRUE}.
Default to \code{FALSE}.}

\item{title_size}{Change title font size.
Default to \code{NULL} to use the default based on \code{font_scale}.}

\item{subtitle_size}{Change subtitle font size.
Default to \code{NULL} to use the default based on \code{font_scale}.}

\item{caption_size}{Change caption font size.
Default to \code{NULL} to use the default based on \code{font_scale}.}

\item{legend_size}{Change legend font size.
Default to \code{NULL} to use the default based on \code{font_scale}.}

\item{legend_title_size}{Change legend title font size.
Default to \code{NULL} to use the default based on \code{font_scale}.}

\item{strip_size}{Change strip font size.
Default to \code{NULL} to use the default based on \code{font_scale}.}

\item{axis_title_size}{Change axis title font size.
Default to \code{NULL} to use the default based on \code{font_scale}.}

\item{axis_text_size}{Change axis text font size.
Default to \code{NULL} to use the default based on \code{font_scale}.}

\item{thick_line}{Change default thickness of "thicker" lines.
Default to \code{NULL} to use the default based on \code{font_scale}.}

\item{thin_line}{Change default thickness of "thinner" lines.
Default to \code{NULL} to use the default based on \code{font_scale}.}

\item{panel_spacing}{Change default panel spacing in "lines" unit.
Default to \code{NULL} to use the default of \code{-0.25}.}

\item{legend_position}{Set legend position and alignment accordingly (active if \code{legend} set to \code{TRUE}).
Default to \code{"bottom"}.}

\item{font_scale}{Make default font sizes larger and default lines thicker if \code{"large"} or
default font sizes smaller and default lines thinner if \code{"small"}.
Default to \code{"normal"}.}
}
\value{
ggplot theme
}
\description{
Theme for ttecon figures.
}
\examples{
library(ggplot2)

ggplot(mtcars, aes(x = mpg * 0.43, y = wt * 0.4535924, color = factor(cyl))) +
  geom_point(size = 2) +
  labs(
    title = "Car weight vs efficiency",
    subtitle = "Using sensible metrics",
    x = "Efficiency (km/l)",
    y = "Weight (1000 kg)",
    color = "Cylinders",
    caption = "Brought to you by the letter 'T'"
  ) +
  theme_tt(style = "paper") +
  scale_color_tt()
}
