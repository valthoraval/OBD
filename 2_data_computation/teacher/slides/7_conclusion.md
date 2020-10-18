---
title: Recap & Conclusion
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

## Closing Slides

<!--v-->

### Purpose of this class

"Classes about tooling are hard" especially at the beginning of the year

* "General Knowledge"
* "Pointers"
* "First experience" in manipulation

<!--v-->

### Why doesn't it work every time

* That's the cloud for you: It depends on your environment, the network etc.
* Google Cloud Shell web is unstable
* Google Cloud SDK doesn't work with ISAE-EDU
* (...)

<!--v-->

Remember the IT matrix from hell ?

![](https://pointful.github.io/docker-intro/docker-img/the-matrix-from-hell.png)

<!--v-->

Welcome to the **ISAE HYPERCUBE FROM HELL**

Consider the following variables:

* in class: REMOTE or ZOOM
* laptop OS: Windows 10, Linux, MacOS, WSL for Linux, Linux VM
* web browser: Chrome, Firefox, Safari, with more or less adblocks etc.
* wi-fi network: Own 4G, own network, ISAE-EDU
* Google Cloud SDK installed: yes, no
* proficiency with CLI/Terminal: high, medium, low

Compute the number of combinations. It's > to the number of students

<!--v-->

That's real life...

![](static/img/elon.png)

<!--s-->

### Take-away for Cloud Computing

<!--v-->

* Cloud Computing is a set of cloud providers renting infrastructure from datacenters
* They also rent more and more complex services that range from infrastructure to platform
* "Cloud computing" will be part of your job independently of your role in the data science field
* Cloud computing can offer flexibility and scalability at the cost of "price" and "security"

<!--v-->

* Virtualisation is the concept of "abstracting" and "slicing" hardware to run OSs and software on
* This was an enabler of cloud computer to divide datacenters resources according to demand
* However cloud computing led to a revolution in "usage" rather than "tech"

<!--s-->

### Take-away for Containers

<!--v-->

#### What we have learned

* Containerisation is the step beyond virtualization
* Containers are used to package software in a standardized way
* Docker Images share underlying OS & can share dependencies
* Unlike VM, you don't pre-allocate resources with containers (due to kernel sharing)
* Images are 'Classes', Containers are 'Objects'
* Docker Hubs enable collaboration

<!--v-->

#### What we haven't touched

* Containers really shine when you are deploying multi-containers applications
  *[This tutorial on microservices w/ Compose](https://training.play-with-docker.com/microservice-orchestration/)
* Containers really shine when you are in a cluster world
  *[Docker swarm](https://training.play-with-docker.com/swarm-stack-intro/)
* Orchestration & Scheduling
  *[Read this excellent Kubernetes comic !](https://cloud.google.com/kubernetes-engine/kubernetes-comic/)

<!--s-->

### Take-away for Orchestration

<!--v-->

*WIP*

<!--s-->

### "BE"

<!--v-->

*WIP*

<!--s-->

## The End (in 3h)

![](https://media.giphy.com/media/l49FqlUguNsGDNCGk/giphy.gif)
