PATHTOFILE=/home/hello/M2.mp4
STREAMID=xn0px90.3xaj-q6y5-qfzy-2rbq
VLC=/usr/bin/cvlc
if [ ! -e "${VLC}" ] ; then
    VLC=vlc
fi
"${VLC}" "${PATHTOFILE}" --aspect-ratio 16x9 --width 720 --height 576 --sout '#transcode{vcodec=H264,acodec=mp3,samplerate=44100}:std{access=rtmp,mux=ffmpeg{mux=flv},dst=rtmp://a.rtmp.youtube.com/live2/'${STREAMID}
