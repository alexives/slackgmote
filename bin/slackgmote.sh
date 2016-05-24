#! /bin/bash

function usage {
	echo Usage: $BASH_SOURCE gif.gif [crop SizeXxSizeY+OffsetX+OffsetY, ex: 120x120+10+10]
	exit 1
}

img=$(echo $1 | sed 's/\.gif//')
crop=$2

max_wh=128
max_size=64000

if [[ -z $1 ]]; then
	usage
fi

if [[ $crop ]]; then
	convert ${img}.gif -coalesce -repage 0x0 -crop ${crop} +repage ${img}_crop.gif || usage
	img=${img}_crop
fi
while [[ ! -e ${img}_slack.gif ]] || [[ $(ls -l ${img}_slack.gif | grep -o ' \d\d\d\d\d ' || echo 9999999) -gt $max_size ]]; do
	convert -resize ${max_wh}x${max_wh} ${img}.gif ${img}_slack.gif
	((--max_wh))
done