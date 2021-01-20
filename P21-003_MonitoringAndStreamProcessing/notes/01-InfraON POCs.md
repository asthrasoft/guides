---
title: 01-InfraON POCs
created: '2021-01-19T18:51:59.182Z'
modified: '2021-01-19T19:00:51.469Z'
---

# 01-InfraON POCs

The key parts of the system include the following
1. A python based web application that can run on AWS and on linux VM (pref django based - but not necessary. Can also be flask based)
2. An API layer (again pref django based, but can also be flask based) along with security and a micro-services architecture with most of the business logic
3. API to mongoDB - crud + lots of complex read/filter/search operations
4. API to rabbitMQ - which is processed in the background using a lambda/worker process and returned to the web through web-sockets.
5. redis/mongo in-memory querying


A separate part of the ssytem would need
1. Streaming IoT time-series data
2. Either a pre-computation of various different stats (min,mean,avg etc) with various time-windows, or a run-time computation and aggregation of these stats
3. A complex alert computation mechanism with a real-time dashboard update over web-sockets
4. A long running SLA computation and other complex reports/dashboards
