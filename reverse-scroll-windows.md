# identify the mouse identification number

1. Open Start.
2. Search for Device Manager
3. Expand the **Mice and other pointing devices** branch.
4. Right-click the mouse that you're using, and select the Properties option.
5. Click on the Details tab.
6. Use the "Property" drop-down menu and choose the **Device instance path** option.
1. Note the VID ID value for the mouse — for example, **HID\VID_0E0F&PID_0003&MI_01**.

# reverse the mouse scrolling using the Registry

1. open the Registry.
1. Browse the following path:
- Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\+(HID)

Quick tip: On Windows 10, you can now copy and paste the path in the Registry's address bar to quickly jump to the key destination.

1. Select the **Device Parameters** key.
1. Double-click the **FlipFlopWheel** DWORD and set the value **from 0 to 1**.
1. Click OK.
1. Restart your computer.
