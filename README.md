# ![logo](https://raw.githubusercontent.com/mar10/wsgidav/master/doc/logo.png) WsgiDAV Docker Image
[![License](https://img.shields.io/pypi/l/wsgidav.svg)](https://github.com/mar10/wsgidav/blob/master/LICENSE)

[WsgiDAV](https://github.com/mar10/wsgidav) is a generic and extendable 
[WebDAV](http://www.ietf.org/rfc/rfc4918.txt) server
written in Python and based on [WSGI](http://www.python.org/dev/peps/pep-0333/).

This Docker image runs WsgiDAV as a stand-alone WebDAV server 
that publishes a local directory for reading and writing.

Pull image:
```
docker pull mar10/wsgidav
```

Run:
```
docker run --rm -it -p <PORT>:8080 -v <ROOT_FOLDER>:/var/wsgidav-root mar10/wsgidav
```
for example
```
docker run --rm -it -p 8080:8080 -v c:/temp:/var/wsgidav-root mar10/wsgidav
```
Then open this URL in a web browser, Windows File Explorer, 
or any other WebDAV client:
```
http://localhost:8080/
```


Build (normally not required if you pull this image from docker-hub):
```
docker build --rm -f Dockerfile -t mar10/wsgidav .
```

## More info on WsgiDAV

  * [Read The Docs](http://wsgidav.rtfd.org) for details.
  * [WsgiDAV project](https://github.com/mar10/wsgidav)
  * [Discussion group](https://groups.google.com/forum/#!forum/wsgidav)
  * [Stackoverflow](http://stackoverflow.com/questions/tagged/wsgidav)
