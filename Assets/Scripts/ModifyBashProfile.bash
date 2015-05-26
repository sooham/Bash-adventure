### Append this to the end of the user's .bash_profile

# modify the cd to open Finder windows
function cd() {builtin cd "$@"; open .; }
