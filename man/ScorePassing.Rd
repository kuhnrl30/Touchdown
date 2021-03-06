% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/ScorePassing.R
\name{ScorePassing}
\alias{ScorePassing}
\title{Score the passing statistics}
\usage{
ScorePassing(x, PassingYds = c(25, 1), PassingTD = 4,
  PassingInterception = -1, FumbleLost = -2)
}
\arguments{
\item{x}{dataframe of player statistics data. Should be
of the format produced by the GetStats() function.}

\item{PassingYds}{Vector with the yardage increment and
point value. As an example, a player is awarded 1 point for
every 25 yards, then the score rule is of the format c(25,1)}

\item{PassingTD}{Points awarded for passing touchdowns}

\item{PassingInterception}{Points awarded for interceptions
thrown. Use a negative value if points are lost for interceptions.}

\item{FumbleLost}{Points awarded for each fumble lost.
Since this function is for offensive stats, a fumble lost would occur
when the defense recovers the fumble.}
}
\value{
1 by nrow(x) matrix with the total score for each row
}
\description{
Applies scoring rules to the player statistics.
Default values are set to the standard scoring values.
}

