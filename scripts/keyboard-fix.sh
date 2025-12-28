# This fixes my keyboard's fn row being reversed
echo 0 | sudo tee /sys/module/hid_apple/parameters/fnmode
