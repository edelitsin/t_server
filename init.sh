sudo mv /home/box/t_server ~
#sudo mv /home/box/t_server/web ~
sudo ln -fs /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

gunicorn -w 2 -c /home/box/web/etc/hello.py hello:wsgi_app #& gunicorn -w 2 -c /home/box/web/etc/qa.py ask.wsgi:application & curl -vv 'http://127.0.0.1:8000/login/'
