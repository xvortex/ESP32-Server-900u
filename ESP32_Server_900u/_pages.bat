@echo off

python bin/bin2h.py pages\goldhen.bin goldhen_gz > goldhen.h
python bin/bin2h.py pages\jzip.js jzip_gz > jzip.h
python bin/bin2h.py pages\loader.html.1 loader_gz > loader1.h
python bin/bin2h.py pages\loader.html.2 loader_gz > loader2.h
python bin/bin2h.py pages\index.html.1 index_gz > index1.h
python bin/bin2h.py pages\index.html.2 index_gz > index2.h
python bin/bin2h.py pages\style.css.1 style_gz > style1.h
python bin/bin2h.py pages\style.css.2 style_gz > style2.h
python bin/bin2h.py pages\admin.html.1 admin_gz > admin1.h
python bin/bin2h.py pages\admin.html.2 admin_gz > admin2.h
python bin/bin2h.py pages\menu.html menu_gz > menu.h
python bin/bin2h.py pages\rebooting.html rebooting_gz > rebooting.h
python bin/bin2h.py pages\update.html update_gz > update.h
python bin/bin2h.py pages\upload.html upload_gz > upload.h
python bin/bin2h.py pages\reboot.html reboot_gz > reboot.h
python bin/bin2h.py pages\format.html format_gz > format.h
python bin/bin2h.py pages\autohen.html autohen_gz > autohen.h

echo Done.