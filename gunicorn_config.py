# coding=utf-8
# Gunicorn configuration variables
bind = "0.0.0.0:7000"
workers = 4
threads = 4
accesslog = "access.log"  # Access logs file
errorlog = "-"  # Disable gunicorn access logs
loglevel = "info"
timeout = 300
graceful_timeout = 60
keepalive = 2
