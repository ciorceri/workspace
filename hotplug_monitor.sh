# On my HP-G1 I have 2 video card (Intel & NVidia)
# From some unknown reasons using only the Intel video card I cannot see the DVI port (to use with an external monitor)
# so I have to activate also the NVidia card from BIOS and to link the NVidia to Intel card (1st xrandr)
# 2nd xrandr: external monitor is on left, laptop on right
# xcalib: adjust laptop monitor color scheme and remove some blue color

# This script is run at XFce startup (Settings Manager -> Session and Startup -> Application Autostart)

xrandr --setprovideroutputsource 1 0
sleep 2
xrandr --output DP-1-1 --primary --auto --output eDP1 --right-of DP-1-1 --auto
sleep 2
xcalib -c
xcalib -blue 1.0 1.0 80.0 -a

