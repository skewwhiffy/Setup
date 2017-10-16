# Setup

## Autohotkey
* Download Autohotkey from [here](https://autohotkey.com/)
* Open setup.ahk
### Editing
* Notepad++ [here](https://autohotkey.com/boards/viewtopic.php?t=50])
* `apm install language-autohotkey`

## Profile for cmder
* `cp profile.ps1 ~/`
* Open the file `<cmderroot>/config/user-profile.ps1` and add the following to the end (with the dot and the quotes)

```
. "~/profile.ps1"
```