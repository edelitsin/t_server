Для использования этого репозитория в качестве ответа введите в терминале Степика:

1)git clone https://github.com/MiraBlack/StepikNginx.git
2)cd StepikNginx
3)sudo sh init.sh

Готово! Можно отправлять.

из папки web запустить это:

sudo gunicorn -b 0.0.0.0:8080 hello:wsgi_app