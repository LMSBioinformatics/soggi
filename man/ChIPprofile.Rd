% Generated by roxygen2 (4.0.1): do not edit by hand
\docType{class}
\name{ChIPprofile-class}
\alias{ChIPprofile}
\alias{ChIPprofile-ChIPprofile}
\alias{ChIPprofile-class}
\alias{regionPlot}
\alias{soggi}
\title{The soggi function and ChIPprofile object.}
\usage{
regionPlot(bamFile, testRanges, samplename = NULL, nOfWindows = 100,
  FragmentLength = 150, style = "point", distanceAround = NULL,
  distanceUp = NULL, distanceDown = NULL, distanceInRegionStart = NULL,
  distanceOutRegionStart = NULL, distanceInRegionEnd = NULL,
  distanceOutRegionEnd = NULL, paired = FALSE, normalize = "RPM",
  plotBy = "coverage", removeDup = FALSE, verbose = TRUE,
  format = "bam", seqlengths = NULL, forceFragment = NULL,
  method = "bin", genome = NULL, cutoff = 80, downSample = NULL,
  minFragmentLength = NULL, maxFragmentLength = NULL)
}
\arguments{
\item{bamFile}{Character vector for location of BAM file or bigWig, an rleList or PWM matrix.}

\item{testRanges}{GRanges object or character vector of BED file location of regions to plot.}

\item{samplename}{Character vector of sample name. Default is NULL.}

\item{nOfWindows}{Number of windows to bin regions into for coverage calculations (Default 100)}

\item{FragmentLength}{Integer vector Predicted or expected fragment length.}

\item{style}{"Point" for per base pair plot, "percentOfRegion" for normalised length and "region" for combined plot}

\item{distanceAround}{Distance around centre of region to be used for plotting}

\item{distanceUp}{Distance upstream from centre of region to be used for plotting}

\item{distanceDown}{Distance downstream from centre of region to be used for plotting}

\item{distanceInRegionStart}{Distance into region start
(5' for Watson/positive strand or notspecified strand Regions,3' for Crick/negatie strand regions)
for plotting.}

\item{distanceOutRegionStart}{Distance out from region start
(5' for Watson/positive strand or notspecified strand Regions,3' for Crick/negatie strand regions)
for plotting.}

\item{distanceInRegionEnd}{Distance into region end
(3' for Watson/positive strand or notspecified strand Regions,5' for Crick/negatie strand regions)
for plotting.}

\item{distanceOutRegionEnd}{Distance out from region end
(3' for Watson/positive strand or notspecified strand Regions,5' for Crick/negatie strand regions)
for plotting.}

\item{paired}{Is data paired end}

\item{normalize}{Calculate coverage as RPM. Presently only RPM available.}

\item{plotBy}{Score to be used for plotting. Presently only coverage.}

\item{removeDup}{Remove duplicates before calculating coverage.}

\item{verbose}{TRUE or FALSE}

\item{format}{character vector of "BAM", "BigWig", "RleList" or "PWM"}

\item{seqlengths}{Chromosomes to be used. If missing will report all.}

\item{forceFragment}{Centre fragment and force consistent fragment width.}

\item{method}{Character vector of value "bp","bin" or "spline".
The bin method divides a region of interest into equal sized bins of number specified in nOfWindows.
Coverage or counts are then summarised within these windows.
The spline method creates a spline with the number of spline points as specified in nOfWindows argument.}

\item{downSample}{Down sample BAM reads to this proportion of orginal.}

\item{genome}{BSGenome object to be used when using PWM input.}

\item{cutoff}{Cut-off for idnetifying motifs when using PWM input.}

\item{minFragmentLength}{Remove fragments smaller than this.}

\item{maxFragmentLength}{Remove fragments larger than this.}
}
\value{
ChIPprofile A ChIPprofile object.
}
\description{
Manual for soggi and ChIPprofile object

The soggi function is the constructor for ChIPprofile objects.
}
\examples{
data(chipExampleBig)
chipExampleBig
}
\references{
See \url{http://bioinformatics.csc.mrc.ac.uk} for more details on soGGi workflows
}

