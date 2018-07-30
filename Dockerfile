# NOTE 2018-07-28: alpine does not compile lxml
FROM python:3

EXPOSE 8080

RUN pip install wsgidav cheroot lxml
RUN mkdir -p /var/wsgidav-root

# NOTE 2018-07-28: --host localhost would not be accessible from outside
CMD wsgidav --host 0.0.0.0 --port 8080 --root /var/wsgidav-root --no-config
