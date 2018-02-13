docker exec -it dispatcherreverse1_proxy_1 /bin/bash
docker exec -it dispatcherreverse1_reverseproxy_1 /bin/bash
docker exec -it dispatcher /bin/bash

dispatcherreverse1_proxy

docker run -it -p 80:80 --network=dispatcherreverse1_web --entrypoint=/bin/bash dispatcherreverse1_dispatcher -i
docker run -it -p 80:80 --network=dispatcherreverse2_web --entrypoint=/bin/bash dispatcherreverse2_dispatcher -i

docker run -it -p 80:80 --network=dispatcherreverse1_web dispatcherreverse1_dispatcher 

docker run -it -p 80:80 --entrypoint=/bin/bash dispatcherreverse1_proxy -i
docker run -it -p 80:80 --entrypoint=/bin/bash dispatcher -i

docker run -it dispatcherreverse2_site1 bash

/usr/sbin/httpd
netstat -plnt
service httpd status
service httpd restart
service httpd reload

/etc/httpd
/var/www/html

vi /etc/httpd/conf/httpd.conf
vi /etc/httpd/conf/dispatcher.any

http://site1.example.com/

tail -f /var/log/httpd/access_log
tail -f /var/log/httpd/error_log
tail -f /var/log/httpd/dispatcher.log

curl 172.17.0.2
curl 172.17.0.3
curl 172.17.0.4

curl 172.20.0.2
ping 172.20.0.2


docker run -i --expose=22 b5593e60c33b bash
docker run --name mynginx1 -P -d nginx

docker run --name mynginx1 -v /tmp/perezpardojc/dispatcher-reverse-1/site1:/usr/share/nginx/html:ro -p 81:80 -P -d nginx
docker run --name mynginx2 -v /tmp/perezpardojc/dispatcher-reverse-1/site2:/usr/share/nginx/html:ro -p 82:80 -P -d nginx

docker run -itd --name docker-nginx -p 4503:80 nginx


dispatcherreverse1_apache_1
dispatcherreverse1_nginx_1

docker network connect site1_default peaceful_noyce
docker network connect site2_default peaceful_noyce
docker network connect bridge peaceful_noyce
docker network connect dispatcherreverse1_default peaceful_noyce
docker network connect dispatcherreverse1_web upbeat_yonath

ping dispatcherreverse1_site2_1
ping dispatcherreverse1_site1_1

