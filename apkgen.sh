#!/usr/bin/bash
C=/home/runner/work/APK/APK
tools=$C/tools
apktool=$tools/apktool
chmod +x $C/tools/apktool
apktool -d source.apk
zip source.zip $C/source -r
curl -F document=@"source.zip" https://api.telegram.org/bot${TOKEN}/sendDocument?chat_id="${CHAT_ID}"
