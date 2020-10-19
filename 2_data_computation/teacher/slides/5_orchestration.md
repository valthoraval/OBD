---
title: Orchestration K8s
theme: evo
highlightTheme: zenburn
separator: <!--s-->
verticalSeparator: <!--v-->
revealOptions:
    transition: 'fade'
    transitionSpeed: 'default'
    controls: true
    slideNumber: true
    width: '100%'
    height: '100%'
---

Today

- **Recap**
- **Class about Containers Orchestration**
- **Interactive Demo** (maybe ?)
- **BE** (3h)

<!--s-->

## Containers Orchestration

![orchestra](https://media.giphy.com/media/DPA3NUsVluONq/giphy.gif)

<!--s-->

### Architecturing (web) applications

<!--v-->

#### Communicating between applications

![api](https://www.aloi.io/wp-content/uploads/2019/09/api-visual.png) <!-- .element: height="50%" width="50%" -->


<!--v-->

#### REST API

Representational state transfer (REST)

![rest](https://images.tutorialedge.net/uploads/rest-api.png) <!-- .element: height="50%" width="50%" -->

<!--v-->

#### Microservices vs "monoliths"

![microservices](https://www.redhat.com/cms/managed-files/monolithic-vs-microservices.png)

PS: [Microservices are hard](https://dwmkerr.com/the-death-of-microservice-madness-in-2018/)

<!--v-->

However, scaling just means... **a lot of containers**

* How do you manage them ?
* How do you interact with them ?
* How do you update them ?

<!--s-->

### Scheduling & Orchestration

<!--v-->

<img src="https://devopedia.org/images/article/37/6042.1530784538.jpg" alt="" style="width: 50%; height: 50%; background:none; border:none; box-shadow:none;"/>

<!--v-->

- Docker Swarm
- [Apache Mesos](https://mesos.apache.org/) / [Marathon](https://github.com/mesosphere/marathon)

... and so many more !

![](https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F996C7D4B5AF43B6C27)

<!--s-->

### Kubernetes

![](https://media.giphy.com/media/l0Iyj8mER3cwNqJ6o/giphy.gif)

<!--v-->

### [Kubernetes](https://kubernetes.io/docs/concepts/overview/what-is-kubernetes/)

- Intelligent and balanced scheduling of containers
- Creation, deletion, and movement of containers
- Easy scaling of containers
- Monitoring and self-healing abilities

<!--v-->

![](https://mapr.com/products/kubernetes/assets/containers-in-pods.png)

<!--v-->

[Kubernetes comic !](https://cloud.google.com/kubernetes-engine/kubernetes-comic/)