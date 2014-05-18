### RabbitMQ Event Sourcing Example

![](https://dl.dropboxusercontent.com/s/6vqm0w07skh906s/2014-05-18%20at%2003.27.png)

## Running the example

##### 1. Ensure RabbitMQ is installed and running

On Mac OSX with homebrew you can install RabbitMQ with

```bash
$ brew install rabbitmq
```

And start it using
```
$ /usr/local/opt/rabbitmq/sbin/rabbitmq-server
```

##### 2. Setup and start all processes

```bash
$ bin/run
```

##### 3. Open all three applications in browser

- [Blog (http://localhost:5001)](http://localhost:5001)
- [Dashboard (http://localhost:5002)](http://localhost:5002)
- [Admin (http://localhost:5003)](http://localhost:5003)
