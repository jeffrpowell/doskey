# doskey starter template

Are you spending way too long typing things out in the command prompt? Do you always find yourself looking up what that darn switch was? Have you ever wanted to have something like a .bashrc file with aliases on Windows?

Look no further, here's how it's done!

1. run regedit
2. navigate to the HKEY_CURRENT_USER\SOFTWARE\Microsoft\Command Processor key
3. add a new string value called "AutoRun" and set the value to "C:\path\to\doskey.bat"
