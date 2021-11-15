# Chrome Errors

copy this file this file: `/usr/share/applications/google-chrome.desktop`  
to `~/.local/share/applications`  
then edit it at `Exec` field.

## Unsupported flag Error

for **you are using an unsupported command-line flag** error:  
while adding flag for adobe connect shits!  
add this: `--test-type`


## Passwords disappeared

for **disappearing passwords**:  
add this: `--password-store=gnome`  
and also you need to run keyring daemon at start.  
add this to i3 config: `exec --no-startup-id /usr/bin/gnome-keyring-daemon --start --components=secrets`


## laggy videos

videos become laggy in chrome after latest update.  
all good in firefox.  
here's the fix:  
1. Go to : `chrome://settings/system`  
2. turn off this: `Use hardware acceleration when available`
