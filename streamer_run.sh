cd /home/cubie/wkdir/rtmptest/crtmp/builders/cmake
crtmpserver/crtmpserver crtmpserver/crtmpserver.lua
sleep 30

cd /home/cubie/wkdir/rtmpstreamer

echo "cubie" | sudo chmod a+r /dev/sunxi_mem
echo "cubie" | sudo chmod a+w /dev/sunxi_mem
#chmod a+r /dev/sunxi_mem
#chmod a+w /dev/sunxi_mem

#echo "rtmp_streamer start !!"
#./rtmp_streamer rtmp://172.16.200.1/flvplayback/streamer >  /home/cubie/wkdir/rtmpstreamer/log.txt &
./rtmp_streamer rtmp://172.16.200.1/flvplayback/streamer > /dev/null 2>&1 &
