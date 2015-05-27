import os
import re


def correct_bash_profile_applescript_path():
    ''' NoneType -> NoneType

        Allows this python script daemon to modify and correct the
        path for applescript file CloseFinderWindows.applescript in
        .bash_profile (in the same directory).
    '''
    applescript_run_cmd = re.compile('osascript.*;\s')

    with open('.bash_profile') as fin:
        contents = fin.read()

    new_command = (
        'osascript ' + os.path.abspath('CloseFinderWindows.applescript') + '; '
        )
    contents = applescript_run_cmd.sub(new_command, contents)

    with open('.bash_profile', 'w') as fout:
        fout.write(contents)

correct_bash_profile_applescript_path()
