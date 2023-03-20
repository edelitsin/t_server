#sudo mv /home/box/t_server ~
sudo mv /home/box/t_server/web ~
sudo ln -fs /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

sudo gunicorn -b 0.0.0.0:8080 hello:wsgi_app
