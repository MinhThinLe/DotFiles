# Re-encodes all media files with the extension supplied by positional argument
# to H.265 to conserve disk space
if [ -z "$1" ]; then
    echo "Missing argument"
    echo "Usage reencode.sh <original extension>"
    exit 1
fi

to_reencode="$(ls | grep .$1)"
IFS=$'\n'
for video in ${to_reencode[@]}; do
    echo $video
    output=$(echo $video | sed "s/.$1/-x265.$1/")
    ffmpeg -vaapi_device /dev/dri/renderD128 -i $video -vf 'format=nv12,hwupload' -c:v hevc_vaapi -c:a libopus -f mp4 -rc_mode 1 -qp 28 $output
    mv $output $video
done
