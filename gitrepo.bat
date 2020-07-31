git df
FOR /f "tokens=2 delims=]" %%G IN ('git for-each-ref --format="%%(upstream:track)%%(refname:short)" --sort="-upstream:track" refs/heads ^| find "[gone]"') DO git branch -D %%G
@echo off
FOR /f "tokens=*" %%F IN ('git for-each-ref --format="%%(refname:short)" --contains="HEAD" refs/heads') DO SET _current_branch=%%F
echo Currently on the %_current_branch% branch
@echo on