## AutoHotKey script to map MacOS shortcuts on Windows 10.

Based on script by [bpampuch](https://github.com/bpampuch/apple-keyboard-mapping-for-win10/blob/master/AppleKeys.ahk).

**Supported functionality:**
* clipboard (CMD+C, CMD+V, CMD+X, CMD+ALT+SHIFT+V)
* app-switching (CMD+Tab)
* text editor cursor manipulation - CMD+Arrow, CMD+SHIFT+Arrow, ALT+Arrow, ALT+SHIFT+Arrow
* window management - CMD+Q, CMD+`
* in-browser tabs - CMD+T, CMD+SHIFT+T, CMD+W, CMD+1...CMD+9, 
* standard actions - CMD+N, CMD+SHIFT+N, CMD+O, CMD+SHIFT+O, CMD+P, CMD+S, CMD+SHIFT+S
* undo/redo - CMD+Z, CMD+SHIFT+Z
* spotlight search (CMD+Space)
* task manager (CMD+ALT+ESC)
* 1-password - CMD+\
* magnet-like window snapping (halves, quarters, thirds, two-thirds, maximize, restore)
* other stuff

**Installation Instructions:**
* Ensure AutoHotKey is installed. [Download here](https://www.autohotkey.com/)
* Download `MacShortcuts.ahk` script from this repository.
* Place the script in your windows startup folder
  * `C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup`
* For first time use, you can right-click and run the script. Otherwise, the script will automatically run on windows startup.
