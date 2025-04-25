#' @title
#' Make Importing Great Again
#'
#' @description
#' `tariff` is a tremendous, absolutely incredible tool—nobody's seen anything
#' like it— that lets you impose BIG, BEAUTIFUL import tariffs on R packages.
#' For too long, foreign packages have been STEALING our CPU cycles. Total
#' disaster. We're bringing manufacturing BACK to your codebase by making
#' foreign imports VERY expensive—believe me! No more free rides for lazy,
#' bloated, unoptimized dependencies from overseas. We're DONE being the global
#' garbage collector. Not happening on OUR watch. Under this revolutionary new
#' tariff plan, every single line of code works for YOU— the hardworking
#' developer. We're protecting OUR cycles, OUR memory, and OUR beautiful, truly
#' beautiful build times. Your imports will never, EVER take advantage of you
#' again. We're taking control. We're putting DOMESTIC CODE FIRST. And let me
#' tell you—we're WINNING. Big time. Like never before. It's going to be HUUUGE.
#' We're making importing great again!
#'
#' @details
#' See the function [tariff::import()] to learn how to impose tariffs and brings
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
