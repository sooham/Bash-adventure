import os
import re


def correct_bash_profile_paths():
    ''' NoneType -> NoneType

        Allows this python script daemon to modify and correct the
        path for applescript file CloseFinderWindows.applescript
        and BossMultiply.bash in .bash_profile (in the same directory).
    '''
    applescript_run_cmd = re.compile(r'osascript.*;\s*builtin')
    bash_run_cmd = re.compile(r'bash.*;\s*fi')

    with open('.bash_profile') as fin:
        contents = fin.read()

    new_command_aplscpt = (
        'osascript ' + os.path.abspath('CloseFinderWindows.applescript') +
        '; builtin'
        )

    new_command_bash = (
        'bash ' + os.path.abspath('BossMultiply.bash') +
        '; fi'
        )
    contents = applescript_run_cmd.sub(new_command_aplscpt, contents)
    contents = bash_run_cmd.sub(new_command_bash, contents)

    with open('.bash_profile', 'w') as fout:
        fout.write(contents)

correct_bash_profile_paths()
