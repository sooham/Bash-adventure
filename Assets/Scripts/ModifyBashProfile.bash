# First run the python modification script PythonSetup.py

# modify the cd to open Finder windows
function cd() {osascript dir;builtin cd "$@"; open .; }
