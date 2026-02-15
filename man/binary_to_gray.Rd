\name{binary_to_gray}
\alias{binary_to_gray}
\title{Convert a Binary String to Gray Code}
\description{
  Converts a binary string consisting of characters 0 and 1
  into its standard Gray code representation.
}
\usage{
binary_to_gray(binary)
}
\arguments{
  \item{binary}{
    A character string containing only characters 0 and 1.
  }
}
\value{
  A character string representing the Gray code.
}
\details{
  The Gray code is computed using:

  \eqn{G = n \oplus (n >> 1)}

  Constraints:
  \itemize{
    \item Maximum 64 bits
    \item Only characters 0 and 1 allowed
  }
}
\examples{
binary_to_gray("1010")
binary_to_gray("1100")
}
\keyword{programming}
\keyword{graycode}
