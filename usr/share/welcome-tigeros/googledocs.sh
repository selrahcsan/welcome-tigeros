#!/usr/bin/env bash
#
#
# WELCOME PARA O TIGER OS
#
# Desenvolvido por eltonff 31/10/2020
# Com a ferramenta BigBashView
# Tecnologias utilizadas: bash, html, css, javascript e <3

#GoogleDocs
cat > "/usr/bin/gdocs" <<EOF
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

if [ "\$(grep "toolkit.legacyUserProfileCustomizations.stylesheets" "\$HOME/.gdocs/prefs.js")" = "" ]; then
    rm -R "\$HOME/.gdocs"
    mkdir -p "\$HOME/.gdocs/chrome"
    echo 'user_pref("media.eme.enabled", true);' >> "\$HOME/.gdocs/prefs.js"
    echo 'user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);' >> "\$HOME/.gdocs/prefs.js"
fi

# Custom profile
echo "#nav-bar{visibility: collapse;} #TabsToolbar{visibility: collapse;}" >> "\$HOME/.gdocs/chrome/userChrome.css"
echo "user_pref(\"browser.tabs.warnOnClose\", false);" >> "\$HOME/.gdocs/user.js"
sed -i 's|user_pref("browser.urlbar.placeholderName.*||g' "\$HOME/.gdocs/prefs.js"

MOZ_DISABLE_GMP_SANDBOX=1 MOZ_DISABLE_CONTENT_SANDBOX=1 \
firefox --class=gdocs -profile "\$HOME/.gdocs" \
-no-remote -new-instance "https://docs.google.com/document" &

count=0
while [ \$count -lt 100 ]; do
    if [ "\$(xwininfo -root -children -all | grep -iE "Navigator.*gdocs")" != "" ]; then
        /usr/bin/xseticon -id "\$(xwininfo -root -children -all | grep -iE "Navigator.*gdocs" | awk '{print \$1}')" /usr/share/pixmaps/docs.png
        count=100
    else
        let count=count+1;
    fi
    sleep 0.5
done
EOF

chmod +x "/usr/bin/gdocs"

echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Google Docs
Exec=gdocs
Categories=Office;
Icon=docs" > /tmp/gdocs.desktop

cp -f /tmp/gdocs.desktop /usr/share/applications
rm /tmp/gdocs.desktop

#GoogleSheets
cat > "/usr/bin/gsheets" <<EOF
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

if [ "\$(grep "toolkit.legacyUserProfileCustomizations.stylesheets" "\$HOME/.gsheets/prefs.js")" = "" ]; then
    rm -R "\$HOME/.gsheets"
    mkdir -p "\$HOME/.gsheets/chrome"
    echo 'user_pref("media.eme.enabled", true);' >> "\$HOME/.gsheets/prefs.js"
    echo 'user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);' >> "\$HOME/.gsheets/prefs.js"
fi

# Custom profile
echo "#nav-bar{visibility: collapse;} #TabsToolbar{visibility: collapse;}" >> "\$HOME/.gsheets/chrome/userChrome.css"
echo "user_pref(\"browser.tabs.warnOnClose\", false);" >> "\$HOME/.gsheets/user.js"
sed -i 's|user_pref("browser.urlbar.placeholderName.*||g' "\$HOME/.gsheets/prefs.js"

MOZ_DISABLE_GMP_SANDBOX=1 MOZ_DISABLE_CONTENT_SANDBOX=1 \
firefox --class=gsheets -profile "\$HOME/.gsheets" \
-no-remote -new-instance "https://docs.google.com/spreadsheets" &

count=0
while [ \$count -lt 100 ]; do
    if [ "\$(xwininfo -root -children -all | grep -iE "Navigator.*gsheets")" != "" ]; then
        /usr/bin/xseticon -id "\$(xwininfo -root -children -all | grep -iE "Navigator.*gsheets" | awk '{print \$1}')" /usr/share/pixmaps/sheets.png
        count=100
    else
        let count=count+1;
    fi
    sleep 0.5
done
EOF

chmod +x "/usr/bin/gsheets"

echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Google Sheets
Exec=gsheets
Categories=Office;
Icon=sheets" > /tmp/gsheets.desktop

cp -f /tmp/gsheets.desktop /usr/share/applications
rm /tmp/gsheets.desktop

#GoogleSlides
cat > "/usr/bin/gslides" <<EOF
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

if [ "\$(grep "toolkit.legacyUserProfileCustomizations.stylesheets" "\$HOME/.gslides/prefs.js")" = "" ]; then
    rm -R "\$HOME/.gslides"
    mkdir -p "\$HOME/.gslides/chrome"
    echo 'user_pref("media.eme.enabled", true);' >> "\$HOME/.gslides/prefs.js"
    echo 'user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);' >> "\$HOME/.gslides/prefs.js"
fi

# Custom profile
echo "#nav-bar{visibility: collapse;} #TabsToolbar{visibility: collapse;}" >> "\$HOME/.gslides/chrome/userChrome.css"
echo "user_pref(\"browser.tabs.warnOnClose\", false);" >> "\$HOME/.gslides/user.js"
sed -i 's|user_pref("browser.urlbar.placeholderName.*||g' "\$HOME/.gslides/prefs.js"

MOZ_DISABLE_GMP_SANDBOX=1 MOZ_DISABLE_CONTENT_SANDBOX=1 \
firefox --class=gslides -profile "\$HOME/.gslides" \
-no-remote -new-instance "https://docs.google.com/presentation" &

count=0
while [ \$count -lt 100 ]; do
    if [ "\$(xwininfo -root -children -all | grep -iE "Navigator.*gslides")" != "" ]; then
        /usr/bin/xseticon -id "\$(xwininfo -root -children -all | grep -iE "Navigator.*gslides" | awk '{print \$1}')" /usr/share/pixmaps/slides.png
        count=100
    else
        let count=count+1;
    fi
    sleep 0.5
done
EOF

chmod +x "/usr/bin/gslides"

echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Google Slides
Exec=gslides
Categories=Office;
Icon=slides" > /tmp/gslides.desktop

cp -f /tmp/gslides.desktop /usr/share/applications
rm /tmp/gslides.desktop

exit