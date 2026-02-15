#' GRI Convert Function
#'
#' This function converts binary input into a specific format.
#' @param binary A binary string to convert.
#' @retu#' Convert Binary String to Gray Code
#'
#' Converts a binary string consisting of characters 0 and 1
#' into its corresponding Gray code representation.
#'
#' @param binary A character string containing only '0' and '1'.
#'
#' @return A character string representing Gray code.
#'
#' @examples
#' binary_to_gray("1010")
#' binary_to_gray("1100")
#'
#' @export
binary_to_gray <- function(binary) {

  if (!is.character(binary) || length(binary) != 1) {
    stop("Input must be a single character string.")
  }

  if (nchar(binary) == 0) {
    stop("Input cannot be empty.")
  }

  if (grepl("[^01]", binary)) {
    stop("Input must contain only '0' and '1'.")
  }

  if (nchar(binary) > 64) {
    stop("Maximum supported length is 64 bits.")
  }

  bits <- strsplit(binary, "")[[1]]
  gray <- character(length(bits))

  gray[1] <- bits[1]

  if (length(bits) > 1) {
    for (i in 2:length(bits)) {
      prev <- as.integer(bits[i - 1])
      curr <- as.integer(bits[i])
      gray[i] <- as.character(bitwXor(prev, curr))
    }
  }

  paste0(gray, collapse = "")
}
rn Converted result as a string.
#' @examples
#' gri_convert("1010101010")

gri_convert <- function(binary) {

  if (nchar(binary) == 0)
    return("HATA: Bos giris")

  if (!grepl("^[01]+$", binary))
    return("HATA: Sadece 0-1")

  if (nchar(binary) > 64)
    return("HATA: 64 bitten buyuk")

  executable_file <- system.file("bin", "grikod", package = "grikod")

  if (executable_file == "")
    return("HATA: executable bulunamadi")

  result <- system2(executable_file, binary, stdout = TRUE, stderr = TRUE)

  if (length(result) > 0)
    return(result[1])
  else
    return("HATA: islem sirasinda hata")
}
