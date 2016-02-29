# flume-hdfs

[Apache Flume](https://flume.apache.org/) 1.6 with HDFS support included.

## Running the container

```
docker run --name flume-hdfs -e FLUME_AGENT_NAME=agent -d avastsoftware/flume-hdfs
```

The above will start Flume with the default example configuration. You will need to provide your own configuration
by mounting the configuration directory (containing the configuration file) as follows:

```
docker run --name flume-hdfs -e FLUME_AGENT_NAME=agent-v /path/to/conf/dir:/opt/lib/flume/conf -d avastsoftware/flume-hdfs
```

### Environment variables

These settings can be specified (overriden) via configuration environment variables:

| Environment variable | Meaning                                                                                        | Default                                     |
|----------------------|------------------------------------------------------------------------------------------------|---------------------------------------------|
| `FLUME_AGENT_NAME`   | Agent name. Agent specified in the configuration file needs to match this name.                | No default (**required** setting)           |
| `FLUME_CONF_DIR`     | Flume configuration directory. This is where the configuration file is expected to be located. | `/opt/lib/flume/conf`                       |
| `FLUME_CONF_FILE`    | Name of the Flume configuration file.                                                          | `/opt/lib/flume/conf/flume-conf.properties` |

## Notes

* Based off [alonsodomin/flume](https://github.com/alonsodomin/docker-flume), but uses an Alpine Linux based JRE image
* Hadoop 2.7.2 included
