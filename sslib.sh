#!/bin/bash
# File: sslib.sh
# Date: Sat Jan 19 21:43:48 2013 +0800
# Author: Yuxin Wu <ppwwyyxxc@gmail.com>
#addr="http://img.sslibrary.com/n/696A676A686F6D6A6667683436363039373736/img20/15E173DB07D19674D531CBE60ED5C1850E758BF0B39409A2134DAEA156B31A2123E742CB730142110040704ADCC59D64DF427E7BC3C9DC1DBEF1A46C0142439D7B3D2E745D2576A5312C0432EBDCB952480AE1B01516F5F307086FED9090DD38E5A3B0C350D41603064DF8D861119AFB3768/b27/"

addr=$1
page=$2
OUTDIR=$3
for i in $(seq -w $page); do
	wget "$(echo $addr/000$i)?.&uf=ssr&zoom=0" -O "$i".jpg
done

