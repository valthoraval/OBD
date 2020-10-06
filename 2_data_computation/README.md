# Data Computation Part 1: Cloud Computing, Containers & Orchestration

[back to home](../)


## Syllabus

[all lectures](./lectures/)

### Cluster Computing (2h)

*TODO*

### Cloud Computing (4h)

**Lecture: Intro to Cloud Computing**

*A lecture about an introduction to "what is the cloud"*

**Lecture: Using Cloud Computing in your daily job**

*What does it mean to "use the cloud" ?*

**Lecture: Intro to Google Cloud Platform**

*A quick intro to GCP*

**Hands-on: [GCP Part 1: The Basics](exercises/1_gcp_setup)**

*My first steps with GCP, Google Cloud Shell*

**Hands-on: [GCP Part 2: My first VMs, IAAS & PAAS, Google Collab](exercises/2_gcp_handson)**

*Here I will create a GCE, interact with GCS, discover managed products, and end with a very useful "SaaS" tool: Google Colab*

### Containers (3h)

**Lecture: From virtualisation to Containerisation, Docker**

*What are containers and why do we need them ? What is Docker ?*

**Hands-on: [Docker part 1: the basics](exercises/3_docker_basics)**

*Discover Docker*

**Hands-on: [Docker part 2: packaging a development environment](exercises/4_docker_jupyter)**

*Package & interact with a dev. enviromnent inside a docker container, learn about volumes and port forwarding*

**Hands-on: [Docker part 3: packaging ML models](exercises/5_docker_ml)**

*Package & interact with a machine learning model in a container, learn about REST APIs and docker-compose*

### Orchestration (3h)

**Lecture: Orchestrating containers, Kubernetes**

**Hands-on: [My first kubernetes cluster for a development environment](exercises/6_zero_to_k8s)**

**Hands-on: [Deploying & Scaling ML models](exercises/7_scaling_ml)**

## Bibliography

### About Cloud Computing

- Buyya, R., Srirama, S. N., Casale, G., Calheiros, R., Simmhan, Y., Varghese, B., ... & Toosi, A. N. (2018). [A manifesto for future generation cloud computing: Research directions for the next decade](../readings/cloud_computing.pdf). ACM computing surveys (CSUR), 51(5), 1-38.

- On [sustainable data centers](https://www.capgemini.com/2020/01/the-more-sustainable-data-center/) and energy use (intro)

- [The NIST Definitions of Cloud Computing](https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-145.pdf)

### About Containers

- [Docker whitepaper: Docker and the way of the Devops](https://www.docker.com/taxonomy/term/4955)

### About Orchestration

- Verma, A., Pedrosa, L., Korupolu, M., Oppenheimer, D., Tune, E., & Wilkes, J. (2015, April). [Large-scale cluster management at Google with Borg](../readings/borg.pdf). In Proceedings of the Tenth European Conference on Computer Systems (pp. 1-17).
