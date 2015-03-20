Exposes a very basic web service for generating random usernames and passwords, running in a docker container, built on ruby with sinatra.

The service runs on a docker enabled host, and binds to port 4567 on the host.

Install with:
```
./build.sh
./run.sh
```

Usage:
```
curl "http://localhost:4567/username_and_password"
```

This should obviously not be used to generate real-world usernames or passwords over an insecure network. The point of the code is to demonstrate basic microservices built on docker.
