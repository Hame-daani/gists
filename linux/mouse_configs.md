# Mouse configs


## keymap the thumb buttons on mouse to back and forward keys

> strange thing! thumb buttons now work after reinstalling os.

```bash
sudo evtest
```

- select the mouse (event6)
- find the scancode of thumb buttons

```
Event: time 1558613958.149431, type 4 (EV_MSC), code 4 (MSC_SCAN), value 90004
Event: time 1558613958.149431, type 1 (EV_KEY), code 275 (BTN_SIDE), value 1
Event: time 1558613958.149431, -------------- SYN_REPORT ------------
```
here is `90004` for back thumb button

- find product values of mouse (eventX to event6):

```bash
grep "" /sys/class/input/eventX/device/id/*

### 
/sys/class/input/event7/device/id/bustype:0003
/sys/class/input/event7/device/id/product:4102
/sys/class/input/event7/device/id/vendor:062a
/sys/class/input/event7/device/id/version:0110
```

- create this file: `/etc/udev/hwdb.d/99-mouse-remap.hwdb`

```
evdev:input:b[bustype]v[vendor]p[product]e[version]*
 ID_INPUT_KEY=1
 KEYBOARD_KEY_[scancode]=keycode
 KEYBOARD_KEY_[scancode]=keycode
```
> note the space before keyboard keys

final result should be like this:

```
evdev:input:b0003v1BCFp0005e0110*
 ID_INPUT_KEY=1
 KEYBOARD_KEY_90004=back
 KEYBOARD_KEY_90005=forward
```

finally, update and reboot.

```bash
sudo systemd-hwdb update
```


## Natural Scroll

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


## Speedup Mouse Wheel

```bash
sudo apt install imwheel
nano ~/.imwheelrc
```

put this in file:

```
None,      Up,   Button4, 3
None,      Down, Button5, 3
Control_L, Up,   Control_L|Button4
Control_L, Down, Control_L|Button5
Shift_L,   Up,   Shift_L|Button4
Shift_L,   Down, Shift_L|Button5
```

those '3's represent the line that will skipped while scroling.  
then run the **imwheel**:

```bash
imwheel --kill
```
