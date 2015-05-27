# First run the python modification script PythonSetup.py

# modify the cd to open Finder windows
 function cd() { osascript /Users/soohamrafiz/Documents/Projects/Bash-adventure/Assets/Scripts/CloseFinderWindows.applescript; builtin cd "$@";open .;if [ -f boss ];then bash /Users/soohamrafiz/Documents/Projects/Bash-adventure/Assets/Scripts/BossMultiply.bash; fi;}
