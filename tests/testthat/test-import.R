# Test for tariffed imports.

test_that("'import' imposes big and beautiful tariffs effective immediately", {
    # Check that the `parallel` package is not loaded.
    expect_false(isNamespaceLoaded("parallel"))

    # Check that the package is not in the search path.
    expect_false(paste0("package:parallel") %in% search())

    # Import the package string with a tariff.
    expect_message(
        import("parallel", tariff = 50),
        regexp = "JUST IMPOSED a 50% TARIFF on package 'parallel'!"
    )

    # Check that the `parallel` package is loaded.
    expect_true(isNamespaceLoaded("parallel"))

    # Check that the package is in the search path.
    expect_true(paste0("package:parallel") %in% search())

    # Unload and detach the package.
    detach(paste0("package:parallel"), unload = TRUE, character.only = TRUE)

    # Check that the `parallel` package is not loaded.
    expect_false(isNamespaceLoaded("parallel"))

    # Check that the package is not in the search path.
    expect_false(paste0("package:parallel") %in% search())

    # Import the package symbol with a tariff.
    expect_message(
        import(parallel, tariff = 150),
        regexp = "JUST IMPOSED a 150% TARIFF on package 'parallel'!"
    )

    # Check that the `parallel` package is loaded.
    expect_true(isNamespaceLoaded("parallel"))

    # Check that the package is in the search path.
    expect_true(paste0("package:parallel") %in% search())

    # Unload and detach the package.
    detach(paste0("package:parallel"), unload = TRUE, character.only = TRUE)

    # Check that the `parallel` package is not loaded.
    expect_false(isNamespaceLoaded("parallel"))
})

