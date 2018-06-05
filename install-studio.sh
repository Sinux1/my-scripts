#!/bin/bash
# echos command being run to terminal
#set -x
# on first error exit with non 0 code
#set -e
#install package for android studio

dnf install -y qemu-kvm android-tools libstdc++.i686 zlib.i686

#install android studio to /opt
URL=https://dl.google.com/dl/android/studio/ide-zips/3.1.2.0
FILE=android-studio-ide-173.4720617-linux.zip
echo "Downloading ${FILE}, depending on connection speeds this may take awhile"
wget -q ${URL}/${FILE}

echo "Unzipping ${FILE}"
unzip -q ${FILE} -d /opt/

echo "Deleting ${FILE}"
rm -f ${FILE}

#Create desktop file for Android Studio.
echo "Creating Application Menu Icon"
cat <<EOF | \
sudo tee /usr/local/share/applications/android-studio.desktop
[Desktop Entry]
Type=Application
Name=Android Studio
Icon=/opt/android-studio/bin/studio.png
Exec=env _JAVA_OPTIONS=-Djava.io.tmpdir=/var/tmp \
/opt/android-studio/bin/studio.sh
Terminal=false
Categories=Development;IDE;
EOF

#set +x
