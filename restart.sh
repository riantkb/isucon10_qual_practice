sudo systemctl restart mysql
sudo systemctl restart nginx
sudo systemctl restart isuumo.go
now=`date +%Y%m%d-%H%M%S` && sudo mv /var/log/mysql/slow.log /var/log/mysql/slow.log.$now && sudo mysqladmin flush-logs
