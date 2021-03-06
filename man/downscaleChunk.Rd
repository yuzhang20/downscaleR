% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/downscaleChunk.R
\name{downscaleChunk}
\alias{downscaleChunk}
\title{Downscaling by chunks}
\usage{
downscaleChunk(
  x,
  y,
  newdata,
  method,
  ...,
  prepareData.args = list(global.vars = NULL, combined.only = TRUE, spatial.predictors
    = NULL, local.predictors = NULL, extended.predictors = NULL),
  condition = NULL,
  threshold = NULL,
  predict = TRUE,
  path = getwd()
)
}
\arguments{
\item{x}{The input grid (admits both single and multigrid, see \code{\link[transformeR]{makeMultiGrid}}). It should be an object as returned by \pkg{loadeR}.}

\item{y}{The observations dataset. It should be an object as returned by \pkg{loadeR}.}

\item{newdata}{New datasets where to apply the model infered. It should be a list of objects as returned by \pkg{loadeR},
containing the new dataset/s.}

\item{method}{A string value. Type of transer function. Currently implemented options are \code{"analogs"}, \code{"GLM"} and \code{"NN"}.}

\item{...}{Optional parameters. These parameters are different depending on the method selected. 
Every parameter has a default value set in the atomic functions in case that no selection is wanted. 
Everything concerning these parameters is explained in the section \code{Details} of the function \code{\link[downscaleR]{downscaleTrain}}. However, if wanted, the atomic functions can be seen here: 
\code{\link[downscaleR]{glm.train}} and \code{\link[deepnet]{nn.train}}.}

\item{prepareData.args}{A list with the arguments of the \code{\link[downscaleR]{prepareData}} function. Please refer to \code{\link[downscaleR]{prepareData}} help for
more details about this parameter.}

\item{condition}{Inequality operator to be applied considering the given threshold.
\code{"GT"} = greater than the value of \code{threshold}, \code{"GE"} = greater or equal,
\code{"LT"} = lower than, \code{"LE"} = lower or equal than. We only train with the days that satisfy the condition.}

\item{threshold}{Numeric value. Threshold used as reference for the condition. Default is NULL. If a threshold value is supplied with no specification of the parameter \code{condition}. Then condition is set to \code{"GE"}.}

\item{predict}{A logic value. Should the prediction on the training set should be returned? Default is TRUE.}

\item{path}{A string indicating the path where to save the prediction.}
}
\value{
Saves the prediction where specified.
}
\description{
Downscale climate data by splitting it in chunks, where there are as many chunks as latitudes. 
This function encapsulates \code{\link[downscaleR]{downscaleTrain}}
}
\seealso{
downscaleTrain for training a downscaling model
downscalePredict for prediction for a a test dataset with a trained model for 
\href{https://github.com/SantanderMetGroup/downscaleR/wiki/training-downscaling-models}{downscaleR Wiki} for downscaling seasonal forecasting and climate projections.

Other downscaling.functions: 
\code{\link{downscaleCV}()},
\code{\link{downscalePredict}()},
\code{\link{downscaleTrain}()},
\code{\link{downscale}()}
}
\author{
J. Bano-Medina
}
\concept{downscaling.functions}
