cd /etc/netctl
install -m640 examples/wireless-wpa wireless-home
nano wireless-home

echo "Starting wifi..."
netctl start wireless-home
echo " done"

echo "If has some error, press Ctrl+C"
pause 10

echo "Makeing this network start on boot..."
netctl enable wireless-home
echo " done"
