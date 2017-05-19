\name{sasengines}
\alias{sashtmlengine}
\alias{saslogengine}
\title{Functions that create SAS engines for knitr}
\description{
In addition to knitr's built in SAS engine, the functions create two
additional engines for SAS.  Once created, these engines may be
invoked like any other knitr engine to generate different forms of
SAS output.

Set up once per session (i.e. document).
}
\usage{
sashtmlengine()
saslogengine()
}
\arguments{
There are no arguments for these functions.}
\details{
This are convenience functions that use
\code{knitr::knit_engines$set()}
to define knitr language engines.

\code{sashtmlengine()} creates a language engine that returns SAS html output
using SAS's ODS system.
\code{saslogengine()} creates a language engine that returns SAS log output instead
of the more typical listing or ODS statistical output.

Using either one is better with a new \code{engine_output()} function.  The one
provided in this package is created by \code{sasengine_output()}.
}
\value{
There are no return values, engine creation is a side effect here.
}
\author{
Doug Hemken
}

\seealso{
\code{\link{sasengine_output}},
\code{\link{knit_engines}}
}
\examples{
# In a first code chunk do
```{r}
require(SASmarkdown)
sashtmlengine()
saslogengine()
engine_output <- sasengine_output()

sasexe <- "C:/Program Files/SASHome/SASFoundation/9.4/sas.exe"
sasopts <- "-nosplash -ls 75"
```
# Then set up SAS code chunks with
```{r, engine="sashtml", engine.path=sasexe, engine.opts=sasopts}
# SAS code here
```
}