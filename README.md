This is a sample containerized webdriverio v6 app

Build the docker image with

```
docker build -t webdriveriov6-sample .
```

Then run with

```
docker run -it -p 5900:5900  webdriveriov6-sample
```

It will start the selenium inside and wait for your command in bash.
Then, run to view the browser in the container

```
 open vnc://:secret@localhost
```

This should show a ubuntu symbol screen sharing app.

Run the follwing inside the container to run tests
```
npx wdio wdio.conf.js
```

You can view the test executing in the Screen sharing app.