# Evolution Alarm Notify
Evolution Alarm Notify continues pop-up reminders even though notifications disabled
# Fix
in this file ```/etc/xdg/autostart/org.gnome.Evolution-alarm-notify.desktop```  

change line below  

```OnlyShowIn=GNOME;Unity;XFCE;Dawati;MATE;```  

to this  

```NotShowIn=GNOME;```
