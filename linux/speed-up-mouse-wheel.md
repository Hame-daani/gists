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