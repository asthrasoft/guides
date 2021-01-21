---
title: 00-IoT Architectures
created: '2021-01-21T12:50:42.762Z'
modified: '2021-01-21T13:19:54.356Z'
---

# 00-IoT Architectures

IoT Systems are different from traditional systems. In this series, lets take a look at how IoT systems are architected.

IoT Systems have a few top level components. These typically include :
1. A Sensor/bot management platform - this registers the bots, checks for security, provisions the bots, configures the bots etc.
2. A BOT or sensor - this collects data (temp, speed, location, network data packets, internet traffic etc) and streams the data to a stream processing server at the EDGE
3. An EDGE device that reads the stream and does some immediate computations for a faster response, but also streams the data back to the central cloud streaming server for primary processing
4. A storage/query and computation engine like TimeSeriesDB
5. Dashboards and reports for working with live data

IoT systems cannot exist in isolation. They are complemented by regular application development platforms. These platforms typically include :
1. A data store that includes a relationalDB, a NoSQL DB and a file system. Other data stores like columnarDB, TimeSeriesDB, GraphDB etc are optional
2. A background serverless processing platform like Lambda/AzureFunctions, Kubeless or celery
3. A queueing broker like RabbitMQ
4. A caching/inMemory system like Redis



