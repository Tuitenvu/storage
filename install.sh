#!/usr/bin/env bash
cat << "EOF"
  _______ _                 _      __      __    
 |__   __| |               | |     \ \    / /    
    | |  | |__   __ _ _ __ | |__    \ \  / /   _ 
    | |  | '_ \ / _` | '_ \| '_ \    \ \/ / | | |
    | |  | | | | (_| | | | | | | |    \  /| |_| |
    |_|  |_| |_|\__,_|_| |_|_| |_|     \/  \__,_|
                                                 
Special thanks to:
  Trần Xuân Thanh(ging-dev) for termux-manager.
  Phạm Quang Huy(huybopbi) for contribute this method.
  Nguyễn Thanh Vũ(vuchimbe) to re-make.

===============================================
LƯU Ý: SHELL SCRIPT NÀY CHỈ DÀNH CHO TERMUX!
Để hệ thống hoạt động tối ưu, ít nhất dung lượng máy phải trống khoảng 1-2GB.
Nhấn enter để bắt đầu tiến hành cài đặt.

EOF
read

echo "==============================================="
echo "[!] Tiến hành cài đặt các gói library còn thiếu [!]"
pkg install -y libpixman libcairo pango xorgproto php libjpeg-turbo-progs libjpeg-turbo-static libjpeg-turbo librsvg nodejs git python wget

git clone https://github.com/Tuitenvu/Botmirai
cd miraiv2
echo "[!] Đã tải source code thành công, tiến hành cài các gói cần thiết [!]"
npm install
echo "[!] Đã cài các gói cần thiết thành công, tiến hành cài đặt file manager [!]"
bash <(wget -qO- https://raw.githubusercontent.com/catalizcs/storage-data/master/install-fmanager.sh)
echo "[!] Đã cài đặt file manager thành công [!]"

echo "==============================================="
echo "Cài đặt hoàn tất! Hãy sửa file config.json, thêm appstate ở cửa sổ sau."
echo "Toàn bộ thư mục của bot được lưu tại '/home/miraiv2'"
echo "Nhấn enter để mở file manager."
read

manager
