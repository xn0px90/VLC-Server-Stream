PATHTOFILE=/home/hello/M2.mp4
STREAMID=xn0px90.3xaj-q6y5-qfzy-2rbq
VLC=/usr/bin/cvlc
if [ ! -e "${VLC}" ] ; then
    VLC=vlc
fi
"${VLC}" "${PATHTOFILE}" --width 1280 --height 720 --sout '#transcode{vcodec=mp4v,acodec=mpga,vb=800,ab=256}:std{access=rtmp,mux=ffmpeg{mux=},dst=rtmp://a.rtmp.youtube.com/live2/'${STREAMID}
