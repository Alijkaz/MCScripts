#
# This script is used for bash based operating systems
# You'll need screen package (If not installed) installed on yor machine
#

#
# Varibles
#
JAR="spigot-1-12-2.jar"
SCREENNAME="eggwars"
MEMORY="512M"

#
# JVM Commands
#
COMMAND="java -Xms$MEMORY -Xmx$MEMORY -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar $JAR nogui"

#
# Screen Startup
#
echo "Starting server $SCREENNAME"
screen -dmS $SCREENNAME $COMMAND
