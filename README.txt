This packages

Here are the steps for updating hotkeys via this package.

STEP 1

Load project prkit.Rproj in R.

STEP 2

Code add-in functions.

STEP 3

Install and Refresh Addins

devtools::document()   # builds NAMESPACE and doc
devtools::install()    # installs package



STEP 4: Update Addins.dcf


Add to addins.dcf file - inst/rstudio/addins.dcf

E.g.
Name: Clear Environment
Description: Removes all variables from the global environment.
Binding: clear_env
Interactive: false



STEP 5: Assign Keyboard Shortcuts

Go to Tools > Addins > Browse Addins

