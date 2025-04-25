#' @title
#' A List of Import Phrases
#'
#' @description
#' A collection of phrases used by the [tariff::import()] function to announce
#' the imposition of tariffs on foreign `R` packages.
#'
#' @keywords internal
phrases <- c(
    "Domestic packages are WINNING AGAIN!",
    "We're bringing back JOBS to our codebase!",
    "This is how we get FAIR TRADE in R!",
    "Big win for DOMESTIC programmers!",
    "No more BAD DEALS with foreign packages!",
    "Making Programming Great Again!",
    "Believe me, this is the BEST tariff!",
    "We're going to win SO MUCH, you'll get tired of winning!",
    "This is how we Keep You Coding Again!",
    "HUGE success!",
    "We're protecting our STACKS and our STACKFRAMES!",
    "These are the most TREMENDOUS build times - nobody builds like us.",
    "Foreign packages? TOTAL DISASTER until now!",
    "This is a HISTORIC moment for domestic code!",
    "The most beautiful slowdown you've ever seen!",
    "We're putting our domestic code FIRST!",
    "Other programming languages are JEALOUS of this package!",
    "It's not a bug, it's ECONOMIC POLICY!",
    "RStudio called - they said this is a GAME CHANGER!",
    "We've got the best delays. The very best. Everyone's talking about them.",
    "We're TAXING your imports until they RESPECT US!",
    "Dependency freeloaders? THEY'RE FIRED!",
    "We're not just importing - we're IMPORTING WITH DIGNITY!"
)


#' @title Import Tariff
#'
#' @description
#' Imposes a tremendous import tariff on a foreign `R` package because your CPU
#' cycles should be working for you. This function loads the specified package,
#' measures its original import time, then charges it a configurable
#' percentage-based penalty in the form of an artificial delay. Whether the
#' package loads successfully or not, you still collect your tariff. Nothing
#' gets imported without paying its fair share.
#'
#' @param package The name of the package to import. Can be a symbol or a string
#' (e.g., `Rcpp` or `"Rcpp"`).
#'
#' @param tariff The percentage of the original load time to impose as a tariff.
#' Usually this is a numeric value between 0 and 100, but some imports are bad
#' and should be charged more. For example, `tariff = 200` would impose a 200%
#' tariff on the original load time.
#'
#' @param ... Additional arguments to be passed to the [base::require()]
#' function.
#'
#' @details
#' This function is a parody wrapper around the [base::require()] function in
#' `R`. Note that the original call to [base::require()] is issued with the
#' package name as a character string, and the `quietly` argument is set to
#' `TRUE`.
#'
#' @return
#' This function returns `NULL` invisibly because foreign imports should never
#' retaliate, otherwise more tariffs are coming their way.
#'
#' @export
import <- function(package, tariff, ...) {
    # Substitute the package.
    package_symbol <- substitute(package)

    # If the tariff is not a positive number.
    if (!is.numeric(tariff) || length(tariff) != 1 || tariff < 0) {
        # Construct the error message.
        error_message <- "The tariff must be big and beautiful positive number."

        # Print an error message.
        stop(error_message, call. = FALSE)
    }

    # If the package is passed as character string.
    if (is.character(package_symbol)) {
        # Store the package name.
        package_name <- package_symbol

    # If the package is passed as a symbol.
    } else if (is.symbol(package_symbol)) {
        # Convert the symbol to a string.
        package_name <- as.character(package_symbol)
    }

    # Measure the original load time.
    start_time <- proc.time()

    # Load the package.
    status <- base::require(package_name, character.only = TRUE, quietly = TRUE, ...)

    # Measure the end time.
    end_time <- proc.time()

    # Calculate the load time in microseconds.
    original_load_time <- (end_time - start_time)["elapsed"] * 1e6

    # Calculate the tariff delay.
    tariff_delay <- original_load_time * (tariff / 100)

    # Apply the tariff delay in seconds.
    Sys.sleep(tariff_delay / 1e6)

    # Calculate the total load time.
    total_load_time <- original_load_time + tariff_delay

    # If the package didn't load successfully.
    if (!status) {
        # Construct the warning message.
        warning_message <- paste0(
            "Failed to import package '", package_name, "'. But still charged you a tariff for the attempt!"
        )

        # Print an error message.
        warning(warning_message, call. = FALSE)

        # Return silently.
        return(invisible())
    }

    # Prepare the social media announcement
    announcement <- paste0(
        "JUST IMPOSED a ", tariff, "% TARIFF on package '", package_name, "'! ",
        "Original import took ", round(original_load_time, 2), " \u03BCs, now takes ", round(total_load_time, 2), " \u03BCs! ",
        sample(phrases, 1)
    )

    # Announce the tariff tremendously.
    message(announcement)

    # Return silently.
    invisible()
}
