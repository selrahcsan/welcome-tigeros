#!/usr/bin/env bash
#
#
# WELCOME PARA O TIGER OS
#
# Desenvolvido por eltonff 31/10/2020
# Com a ferramenta BigBashView
# Tecnologias utilizadas: bash, html, css, javascript e <3

WEBAPP_TARGET="${HOME}/.local/share"

mkdir -p "${WEBAPP_TARGET}/bin"
mkdir -p "${WEBAPP_TARGET}/applications"

#GoogleDocs
cat > "${WEBAPP_TARGET}/bin/gdocs" <<EOF
#!/usr/bin/env sh

webapp-player "https://docs.google.com/document" 
EOF

chmod +x "${WEBAPP_TARGET}/bin/gdocs"

echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Google Docs
Exec=gdocs
Categories=Office;
Icon=docs" > /tmp/gdocs.desktop

cp -f /tmp/gdocs.desktop "${WEBAPP_TARGET}/applications"
rm /tmp/gdocs.desktop

#GoogleSheets
cat > "${WEBAPP_TARGET}/bin/gsheets" <<EOF
#!/usr/bin/env sh


webapp-player "https://docs.google.com/spreadsheets" 
EOF

chmod +x "${WEBAPP_TARGET}/bin/gsheets"

echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Google Sheets
Exec=gsheets
Categories=Office;
Icon=sheets" > /tmp/gsheets.desktop

cp -f /tmp/gsheets.desktop "${WEBAPP_TARGET}/applications"
rm /tmp/gsheets.desktop

#GoogleSlides
cat > "${WEBAPP_TARGET}/bin/gslides" <<EOF
#!/usr/bin/env sh


webapp-player "https://docs.google.com/presentation"
EOF

chmod +x "${WEBAPP_TARGET}/bin/gslides"

echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Google Slides
Exec=gslides
Categories=Office;
Icon=slides" > /tmp/gslides.desktop

cp -f /tmp/gslides.desktop "${WEBAPP_TARGET}/applications"
rm /tmp/gslides.desktop

exit
