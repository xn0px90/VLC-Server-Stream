PATHTOFILE=/home/hello/M2.mp4
STREAMID=xn0px90.3xaj-q6y5-qfzy-2rbq
VLC=/usr/bin/vlc
if [ ! -e "${VLC}" ] ; then
    VLC=vlc
fi
"${VLC}" "${PATHTOFILE}" --sout '#transcode{vcodec=FLV1,acodec=mp3,samplerate=44100}:std{access=rtmp,mux=ffmpeg{mux=flv},dst=rtmp://a.rtmp.youtube.com/live2/'${STREAMID}
