#!/usr/bin/env bash
#
#
# WELCOME PARA O TIGER OS
#
# Desenvolvido por eltonff 31/10/2020
# Com a ferramenta BigBashView
# Tecnologias utilizadas: bash, html, css, javascript e <3

#MSWord
cat > "/usr/bin/msword" <<EOF
#!/usr/bin/env sh
#
# Amofi - App mode for Firefox
# Copyright (C) 2017-2019  SEPBIT
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
# dash version 0.5
#
# @author    Vitor Guia <contato@vitor.guia.nom.br>
# @Modified by Bruno Goncalves <www.biglinux.com.br>
# @copyright 2017-2019 SEPBIT
# @license   http://www.gnu.org/licenses GPL-3.0-or-later
# @see       https://notabug.org/sepbit/amofi Repository of Amofi
#

if [ "\$(grep "toolkit.legacyUserProfileCustomizations.stylesheets" "\$HOME/.msword/prefs.js")" = "" ]; then
    rm -R "\$HOME/.msword"
    mkdir -p "\$HOME/.msword/chrome"
    echo 'user_pref("media.eme.enabled", true);' >> "\$HOME/.msword/prefs.js"
    echo 'user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);' >> "\$HOME/.msword/prefs.js"
fi

# Custom profile
echo "#nav-bar{visibility: collapse;} #TabsToolbar{visibility: collapse;}" >> "\$HOME/.msword/chrome/userChrome.css"
echo "user_pref(\"browser.tabs.warnOnClose\", false);" >> "\$HOME/.msword/user.js"
sed -i 's|user_pref("browser.urlbar.placeholderName.*||g' "\$HOME/.msword/prefs.js"

MOZ_DISABLE_GMP_SANDBOX=1 MOZ_DISABLE_CONTENT_SANDBOX=1 \
firefox --class=msword -profile "\$HOME/.msword" \
-no-remote -new-instance "https://office.live.com/start/Word.aspx" &

count=0
while [ \$count -lt 100 ]; do
    if [ "\$(xwininfo -root -children -all | grep -iE "Navigator.*msword")" != "" ]; then
        /usr/bin/xseticon -id "\$(xwininfo -root -children -all | grep -iE "Navigator.*msword" | awk '{print \$1}')" /usr/share/pixmaps/word.png
        count=100
    else
        let count=count+1;
    fi
    sleep 0.5
done
EOF

chmod +x "/usr/bin/msword"

echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Microsoft Word Online
Exec=msword
Categories=Office;
Icon=word" > /tmp/msword.desktop

cp -f /tmp/msword.desktop /usr/share/applications
rm /tmp/msword.desktop

#MSExcel
cat > "/usr/bin/msexcel" <<EOF
#!/usr/bin/env sh
#
# Amofi - App mode for Firefox
# Copyright (C) 2017-2019  SEPBIT
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
# dash version 0.5
#
# @author    Vitor Guia <contato@vitor.guia.nom.br>
# @Modified by Bruno Goncalves <www.biglinux.com.br>
# @copyright 2017-2019 SEPBIT
# @license   http://www.gnu.org/licenses GPL-3.0-or-later
# @see       https://notabug.org/sepbit/amofi Repository of Amofi
#

if [ "\$(grep "toolkit.legacyUserProfileCustomizations.stylesheets" "\$HOME/.msexcel/prefs.js")" = "" ]; then
    rm -R "\$HOME/.msexcel"
    mkdir -p "\$HOME/.msexcel/chrome"
    echo 'user_pref("media.eme.enabled", true);' >> "\$HOME/.msexcel/prefs.js"
    echo 'user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);' >> "\$HOME/.msexcel/prefs.js"
fi

# Custom profile
echo "#nav-bar{visibility: collapse;} #TabsToolbar{visibility: collapse;}" >> "\$HOME/.msexcel/chrome/userChrome.css"
echo "user_pref(\"browser.tabs.warnOnClose\", false);" >> "\$HOME/.msexcel/user.js"
sed -i 's|user_pref("browser.urlbar.placeholderName.*||g' "\$HOME/.msexcel/prefs.js"

MOZ_DISABLE_GMP_SANDBOX=1 MOZ_DISABLE_CONTENT_SANDBOX=1 \
firefox --class=msexcel -profile "\$HOME/.msexcel" \
-no-remote -new-instance "https://office.live.com/start/Excel.aspx" &

count=0
while [ \$count -lt 100 ]; do
    if [ "\$(xwininfo -root -children -all | grep -iE "Navigator.*msexcel")" != "" ]; then
        /usr/bin/xseticon -id "\$(xwininfo -root -children -all | grep -iE "Navigator.*msexcel" | awk '{print \$1}')" /usr/share/pixmaps/excel.png
        count=100
    else
        let count=count+1;
    fi
    sleep 0.5
done
EOF

chmod +x "/usr/bin/msexcel"

echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Microsoft Excel Online
Exec=msexcel
Categories=Office;
Icon=excel" > /tmp/msexcel.desktop

cp -f /tmp/msexcel.desktop /usr/share/applications
rm /tmp/msexcel.desktop

#MSPowerPoint
cat > "/usr/bin/mspowerpoint" <<EOF
#!/usr/bin/env sh
#
# Amofi - App mode for Firefox
# Copyright (C) 2017-2019  SEPBIT
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
# dash version 0.5
#
# @author    Vitor Guia <contato@vitor.guia.nom.br>
# @Modified by Bruno Goncalves <www.biglinux.com.br>
# @copyright 2017-2019 SEPBIT
# @license   http://www.gnu.org/licenses GPL-3.0-or-later
# @see       https://notabug.org/sepbit/amofi Repository of Amofi
#

if [ "\$(grep "toolkit.legacyUserProfileCustomizations.stylesheets" "\$HOME/.mspowerpoint/prefs.js")" = "" ]; then
    rm -R "\$HOME/.mspowerpoint"
    mkdir -p "\$HOME/.mspowerpoint/chrome"
    echo 'user_pref("media.eme.enabled", true);' >> "\$HOME/.mspowerpoint/prefs.js"
    echo 'user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);' >> "\$HOME/.mspowerpoint/prefs.js"
fi

# Custom profile
echo "#nav-bar{visibility: collapse;} #TabsToolbar{visibility: collapse;}" >> "\$HOME/.mspowerpoint/chrome/userChrome.css"
echo "user_pref(\"browser.tabs.warnOnClose\", false);" >> "\$HOME/.mspowerpoint/user.js"
sed -i 's|user_pref("browser.urlbar.placeholderName.*||g' "\$HOME/.mspowerpoint/prefs.js"

MOZ_DISABLE_GMP_SANDBOX=1 MOZ_DISABLE_CONTENT_SANDBOX=1 \
firefox --class=mspowerpoint -profile "\$HOME/.mspowerpoint" \
-no-remote -new-instance "https://office.live.com/start/PowerPoint.aspx" &

count=0
while [ \$count -lt 100 ]; do
    if [ "\$(xwininfo -root -children -all | grep -iE "Navigator.*mspowerpoint")" != "" ]; then
        /usr/bin/xseticon -id "\$(xwininfo -root -children -all | grep -iE "Navigator.*mspowerpoint" | awk '{print \$1}')" /usr/share/pixmaps/powerpoint.png
        count=100
    else
        let count=count+1;
    fi
    sleep 0.5
done
EOF

chmod +x "/usr/bin/mspowerpoint"

echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Microsoft PowerPoint Online
Exec=mspowerpoint
Categories=Office;
Icon=powerpoint" > /tmp/mspowerpoint.desktop

cp -f /tmp/mspowerpoint.desktop /usr/share/applications
rm /tmp/mspowerpoint.desktop

exit