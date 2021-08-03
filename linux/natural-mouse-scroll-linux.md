`/usr/share/X11/xorg.conf.d/40-libinput.conf`

add this: `Option "NaturalScrolling" "on"`

to `pointer` and `touchpad` classes.

```bash
  Section "InputClass"
          Identifier "libinput pointer catchall"
          MatchIsPointer "on"
          MatchDevicePath "/dev/input/event*"
          Option "NaturalScrolling" "on"
          Driver "libinput"
  EndSection
```
