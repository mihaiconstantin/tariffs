#' @title
#' Make Importing Great Again
#'
#' @description
#' `tariff` is a fantastic tool that lets you impose import tariffs on `R`
#' packages. We're going to bring manufacturing BACK to your codebase by making
#' foreign imports more EXPENSIVE! Foreign packages have been STEALING our CPU
#' cycles for TOO LONG! It's time to put AMERICA FIRST and make importing FAIR
#' and BALANCED again! No more free rides for lazy, unoptimized dependencies
#' from overseas. We're DONE being the global garbage collector. Under this new
#' tariff plan, every line of code works for YOU—the hardworking developer!
#' We're protecting OUR cycles, OUR memory, and OUR beautiful, beautiful build
#' times. Believe me—your imports will never take advantage of you again. We're
#' taking control, and we're WINNING like never before!
#'
#' @details
#' See the function [tariff::tariff()] to learn how to impose tariffs and brings
#' back billions and billions and billions of CPU cycles to your codebase.
#'
#' @keywords internal
"_PACKAGE"

# On package attach.
.onAttach <- function(libname, pkgname) {
    # If there this is an interactive session.
    if (interactive()) {
        # Print package information.
        packageStartupMessage(
            "Make Importing Great Again!"
        )
    }
}
