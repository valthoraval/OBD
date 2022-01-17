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

This class

- **Lecture about Containers Deployment**
- **Deploy your model in production BE**
- **Quick intro to Orchestration**
- **Concluding slides**

<!--s-->

## Containers Deployment & Multi applications

<!--v-->

- **Lecture about Containers Deployment**
- **Deploy your model in production BE**

<!--s-->

## Containers Orchestration

![orchestra](https://media.giphy.com/media/DPA3NUsVluONq/giphy.gif)

<!--v-->

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

### Scaling up (a little story)

<!--v-->

I have an **awesome** ML model

![model](https://media.geeksforgeeks.org/wp-content/uploads/cat-vs-dog.jpg)

<!--v-->

![package](static/img/packaging.png)

<!--v-->

![serving](https://www.ovh.com/blog/wp-content/uploads/2020/04/548C09AD-B622-411D-B02A-644C7AECDDAB.jpeg)

<!--v-->

In prod now ?

<!--v-->

#### Questions

Suppose I have a large pool of machines available

* How do I **deploy my container ?** <!-- .element: class="fragment" data-fragment-index="1" -->
* How do I **put the right containers at the right spot ?** <!-- .element: class="fragment" data-fragment-index="2" -->
* How do I **scale (up and down) to demand ?** <!-- .element: class="fragment" data-fragment-index="3" -->
* How do I **expose the http endpoints ?** <!-- .element: class="fragment" data-fragment-index="4" -->
* How do I **manage failure of containers ?** <!-- .element: class="fragment" data-fragment-index="5" -->
* How do I **update my model without downtime** <!-- .element: class="fragment" data-fragment-index="6" -->

<!--v-->

### Scheduling & Orchestration

<!--v-->

<img src="https://devopedia.org/images/article/37/6042.1530784538.jpg" alt="" style="width: 50%; height: 50%; background:none; border:none; box-shadow:none;"/>

<!--v-->

Examples...

- Docker Swarm
- CoreOS Fleet
- [Apache Mesos](https://mesos.apache.org/) / [Marathon](https://github.com/mesosphere/marathon)

... and so many more !

![ecosystem](https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F996C7D4B5AF43B6C27)

<!--v-->

![kub](https://miro.medium.com/max/1320/1*Mdj9wylSl0wqJ9sB0ENbRA.png)

<!--s-->

### Kubernetes ("Helmsman")

![helm](https://media.giphy.com/media/l0Iyj8mER3cwNqJ6o/giphy.gif)

<!--v-->

Kubernetes (or k8s) comes from Google's internal systems [Borg](https://github.com/SupaeroDataScience/OBD/blob/master/readings/borg.pdf)

It is open source now <https://github.com/kubernetes> and used... everywhere ?

<!--v-->

### [Kubernetes](https://kubernetes.io/docs/concepts/overview/what-is-kubernetes/)

![k8s](https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_250,h_195/https://assets.ubuntu.com/v1/767f38a4-kubernetes-stacked-color.svg)

Kubernetes manages your containers on a cluster of machine while taking care of 

- Creation, deletion, and movement of containers
- Scheduling (match containers to machines by ressources etc.)
- Scaling of containers
- Serving of containers through unified endpoints
- Monitoring and healing

<!--v-->

😱 😱 😱 😱

![k8s](https://platform9.com/wp-content/uploads/2019/05/kubernetes-constructs-concepts-architecture-1024x800.jpg) <!-- .element: height="40%" width="40%" -->

<!--v-->

🤗 🤗 🤗

![k8s](static/img/k8s.png)  <!-- .element: height="40%" width="40%" -->

<!--v-->

Pods, Nodes

![pods-nodes](https://matthewpalmer.net/kubernetes-app-developer/articles/networking-overview.png) <!-- .element: height="50%" width="50%" -->

<!--v-->

Endpoints

![service](https://storage.googleapis.com/static.ianlewis.org/prod/img/753/endpoints.png) <!-- .element: height="50%" width="50%" -->

<!--v-->

Updating

![rolling](static/img/rolling.png) <!-- .element: height="50%" width="50%" -->

<!--v-->

"Declarative" programming, cloud agnostic

![declarative](https://miro.medium.com/max/1126/1*bwrbghRAwtf6lEVvoJCbyQ.png)

<!--v-->

Welcome to YAML programming

`kubectl apply -f deployment.yaml`

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
  labels:
    app: nginx
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:1.14.2
        ports:
        - containerPort: 80
```

<!--v-->

![helm](static/img/helm.png)  <!-- .element: height="50%" width="50%" -->

Example: <https://artifacthub.io/packages/helm/dask/dask>

<!--v-->

GCP + k8s = ❤️‍

![GKE](https://venturebeat.com/wp-content/uploads/2018/05/image11.png?w=1200&strip=all) <!-- .element: height="50%" width="50%" -->

<!--v-->

![sailing](static/img/sailing.png)

[comic](https://cloud.google.com/kubernetes-engine/kubernetes-comic/)

<!--v-->

Play with k8s

<https://www.katacoda.com/courses/kubernetes>

<https://labs.play-with-k8s.com/>

<https://github.com/yogeek/kubernetes-local-development>

<!--s-->

## Interactive Demo for Kubernetes

<!--v-->

### What is it

Two examples of **applications** deployed in a **Kubernetes cluster**

* Development environment with jupyter notebook (a la google colab)
* ML model + companion webapp to interact with it

<!--v-->

### Development environment

<!--v-->

*WIP*

<!--v-->

### ML Model deployed in "production"

<!--v-->

*WIP*

<!--s-->

### Take-away for Orchestration

<!--v-->

Orchestration is the "management" part of Containers

It tries to answer the following questions

* How do I **deploy my container** ?
* How do I **put the right containers at the right spot** ?
* How do I **scale (up and down) to demand** ?
* How do I **expose the http endpoints** ?
* How do I **manage failure of containers** ? 
* How do I **update my model without downtime** ?

<!--v-->

Kubernetes is **one** of the solutions (the hardest) available to you

Read this [comic](https://cloud.google.com/kubernetes-engine/kubernetes-comic/) 