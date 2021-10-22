# chrome errors on i3

add these changes to this file: `/usr/share/applications/google-chrome.desktop`  
at `Exec` field

for: `you are using an unsupported command-line flag` error while adding flag for adobe connect shits!  
add this: `--test-type`

for: `disappearing passwords`  
add this: `--password-store=gnome`  
and also you need to run keyring daemon at start.  
add this to i3 config: `exec --no-startup-id /usr/bin/gnome-keyring-daemon --start --components=secrets`

finally it should looked like this: `Exec=/usr/bin/google-chrome-stable %U --test-type --password-store=gnome`
