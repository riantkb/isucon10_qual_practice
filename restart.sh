sudo cat etc/mysql/my.cnf > /etc/mysql/my.cnf
sudo cat etc/nginx/nginx.conf > /etc/nginx/nginx.conf

# cd go
# make

sudo systemctl restart mysql
sudo systemctl restart nginx
sudo systemctl restart isuumo.go
now=`date +%Y%m%d-%H%M%S` && sudo mv /var/log/mysql/slow.log /var/log/mysql/slow.log.$now && sudo mysqladmin flush-logs
