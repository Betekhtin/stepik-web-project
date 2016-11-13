sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
gunicorn -b 0.0.0.0:8080 --pythinpath /home/box/web hello:application
gunicorn -b 0.0.0.0:8000 --pythonpath /home/box/web/ask ask.wsgi:application
