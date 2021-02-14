#!/usr/bin/bash
C=/home/runner/work/APK/APK
tools=$C/tools
apktool=$tools/apktool
chmod +x $C/tools/apktool
$apktool d source.apk
zip source.zip $C/source -r
a=source
ls
curl -F document=@"${a}.zip" https://api.telegram.org/bot${TOKEN}/sendDocument?chat_id="${CHAT_ID}"
