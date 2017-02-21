vlc M2.mp4:width=1920:height=1080 --sout '#transcode{vcodec=h2
64,vb=1000,acodec=aac,ab=64,channels=2}:std{access=rtmp,mux=ffmpeg,dst=rtmp://a.rtmp.youtube.com/live2
/3xaj-q6y5-qfzy-2rbq}'
