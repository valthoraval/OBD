# Data Computation Part 1: Cloud Computing, Containers & Orchestration

## TOC

* TOC
{:toc}

* [Back to home](../)
* [All slides](./lectures/)

## Syllabus

### [Introduction](lectures/0_intro.html)

*Introduction to data computation module*

### Cloud Computing (4h)

*Intro to cloud computing & google cloud platform*

Date | Type | Link | Description
| --- | --- | --- | ---
07/10 | Lecture | [Intro to Cloud Computing](lectures/1_cloud_computing.html) | *A lecture about an introduction to "what is the cloud"*
07/10 | Lecture | [Using Cloud Computing in your daily job](lectures/2_cloud_usage.html) | *What does it mean to "use the cloud" ?*
07/10 | Lecture | [Intro to Google Cloud Platform](lectures/3_gcp.html) | *A quick intro to GCP*
07/10   14/10 | Hands-on | [GCP Part 1: The Basics](https://github.com/SupaeroDataScience/OBD/tree/master/2_data_computation/exercises/1_gcp_setup) | *My first steps with GCP, Google Cloud Shell*
14/10 | Hands-on | [GCP Part 2: My first VMs, Storage, IAAS & PAAS](https://github.com/SupaeroDataScience/OBD/tree/master/2_data_computation/exercises/2_gcp_handson) | *Here I will create a GCE instance, interact with GCS, discover managed products*
14/10 | Recap | [Important notions about Cloud Computing](lectures/6_conclusion.html#/1) | *A recap of important notions*

### Containers (2h)

*Intro to containers & docker*

Date | Type | Link | Description
| --- | --- | --- | ---
14/10 | Lecture | [From virtualisation to Containerisation, Docker](lectures/4_containers.html) | *What are containers and why do we need them ? What is Docker ?*
14/10 | Hands-on | Docker part 1: the basics | *Discover Docker*
14/10 | Hands-on | Docker part 2: packaging a development environment | *Package & interact with a dev. enviromnent inside a docker container, learn about volumes and port forwarding*
20/10 | Recap | Important notions about Docker | *A small summary of important notions about Docker*

### Orchestration (2h)

*Intro to container orchestration and kubernetes*

Date | Type | Link | Description
| --- | --- | --- | ---
20/10 | Lecture |  Orchestrating containers, Kubernetes | *WIP*
20/10 | Hands-on | My first kubernetes cluster for a development environment | *WIP*

### Deployment (2h)

*A small workshop that puts everything together: Docker, Kubernetes, to deploy an image classifier in a scalable fashion*

Date | Type | Link | Description
| --- | --- | --- | ---
20/10 | Lecture |  Webservices, RESTful APIs, Docker Compose | *Learn about webservices, microservices, restful apis, docker compose and all everything gets together to deploy a ML model into production*
20/10 | Hands-on | Docker part 3: Packaging ML Models, Docker Compose, RESTful APIs | *Package & interact with a machine learning model in a container, learn about REST APIs and docker-compose*
20/10 | Hands-on | Deploying & Scaling ML models with Kubernetes | *Deploy your model using Kubernetes, make it scale with a little help from your friends !*


### [Conclusion](lectures/7_conclusion.html)

*Finally it's over !!!!*

### What's next ?

Date | Duration | Title
| --- | --- | ---
18/11 | 2h | Cluster Compute
01/12 | 3h | GPU
02/12 | 3h | GPU

## Bibliography

### About Cloud Computing

* Buyya, R., Srirama, S. N., Casale, G., Calheiros, R., Simmhan, Y., Varghese, B., ... & Toosi, A. N. (2018). [A manifesto for future generation cloud computing: Research directions for the next decade](../readings/cloud_computing.pdf). ACM computing surveys (CSUR), 51(5), 1-38.

* On [sustainable data centers](https://www.capgemini.com/2020/01/the-more-sustainable-data-center/) and energy use (intro)

* [The NIST Definitions of Cloud Computing](https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-145.pdf)

* [Open Data: Open Sentinel 2 archive on AWS](https://aws.amazon.com/blogs/publicsector/complete-sentinel-2-archives-freely-available-to-users/)

* [Environmental Impact of Cloud vs On Premise](https://download.microsoft.com/download/A/F/F/AFFEB671-FA27-45CF-9373-0655247751CF/Cloud%20Computing%20and%20Sustainability%20-%20Whitepaper%20-%20Nov%202010.pdf) 

* [Environmental Impact of cloud vs on-premise medium blog post](https://medium.com/@tigerbabu/cloud-computing-greener-than-your-on-premise-7e31143e0bc2)

* [Paper from Natural Resources Defense Council on Cloud vs On-Premise](https://www.nrdc.org/sites/default/files/cloud-computing-efficiency-IB.pdf)

* Anecdotes about Cloud Computing : http://highscalability.com

### About Containers

* [Docker whitepaper: Docker and the way of the Devops](https://www.docker.com/taxonomy/term/4955)

### About Orchestration

* Verma, A., Pedrosa, L., Korupolu, M., Oppenheimer, D., Tune, E., & Wilkes, J. (2015, April). [Large-scale cluster management at Google with Borg](../readings/borg.pdf). In Proceedings of the Tenth European Conference on Computer Systems (pp. 1-17).
