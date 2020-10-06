---
title: Using the cloud
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

## "Using" the Cloud

![](static/img/comic.png)


<!--v-->

### Cloud Computing: A technical *evolution*

- More Virtualization
- More API
- More Managed Services

<!--s-->

### Cloud Computing: A usage **revolution**

<!--v-->

#### Empowerement / access to computing power

- Outsourcing infra, maintenance, security, development of new services
- Pay-per-use with "Infinitely scalable" infrastructure
- "No need to plan out" infrastructure
    - Enabling innovation
    - Power in the hands of developpers/builders

<!--v-->

#### Changing the way we interact with hardware

We interact with cloud providers using APIs...

```bash
gcloud compute --project=deeplearningsps instances create ${INSTANCE_NAME} \
    --zone=${ZONE} \
    --machine-type=n1-standard-8 \
    --scopes=default,storage-rw,compute-rw \
    --maintenance-policy=TERMINATE \
    --image-family=ubuntu-1804-lts \
    --image-project=ubuntu-os-cloud \
    --boot-disk-size=200GB \
    --boot-disk-type=pd-standard \
    --accelerator=type=nvidia-tesla-p100,count=1 \
    --metadata-from-file startup-script=startup_script.sh
```

<!--v-->

Before...

![](https://i.pinimg.com/originals/6b/92/a0/6b92a03c8b87aa448f8206ee57b5a4fc.jpg)

<!--v-->

After...

```yaml
resources:
- name: vm-created-by-deployment-manager
  type: compute.v1.instance
  properties:
    zone: us-central1-a
    machineType: zones/us-central1-a/machineTypes/n1-standard-1
    disks:
    - deviceName: boot
      type: PERSISTENT
      boot: true
      autoDelete: true
      initializeParams:
        sourceImage: projects/debian-cloud/global/images/family/debian-9
    networkInterfaces:
    - network: global/networks/default
```

<!--v-->

Infrastructure as Code

- Infra is now managed via text files
- Data is securely stored on storage
- So we store code + urls on git... and everything is reproducible !
- We use automated deployment tools (terraform, gcp deployment manager...)


<!--v-->

Pet vs Cattle

![](static/img/pet-vs-cattle.png)

<!--s-->

### Food for though

<!--v-->

**Is using cloud computing less expensive ?**

- Depend on your normal / peak utilization
- Access to latest hardware without investment
- Fully utilized hardware is more expensive on the cloud
- CLOUD HYGIENE !
  - Watch for unused services / storage
  - Shutdown machines when not used
  - Services stack up...

<!--v-->

**Is using cloud computing more secure / safer ?**

- The best engineers in the world working on it
- Secure regions / private cloud... 

or...

- Your data somewhere in some datacenter...
- "Dependency" towards your cloud provider...

<!--s-->

### Cloud usage, some anecdotes

<!--v-->

(from 2018)

- Apple: 350m$ on AWS / year
- Spotify: 150m$ on GCP / year
- Lyft: 100m$ on AWS / year

<!--v-->

Pokemon Go Launch (2016)

![](https://storage.googleapis.com/gweb-cloudblog-publish/images/google-cloud-pokemon-go-1kwkj.max-700x700.PNG)

https://cloud.google.com/blog/products/gcp/bringing-pokemon-go-to-life-on-google-cloud

<!--v-->

http://highscalability.com

http://highscalability.com/all-time-favorites

[Netflix: What happens when you press play - 2017](http://highscalability.com/blog/2017/12/11/netflix-what-happens-when-you-press-play.html)

[Mind boggling statistics on Amazon Prime Day](0_index.htmlhttps://aws.amazon.com/blogs/aws/amazon-prime-day-2019-powered-by-aws/

<!--s-->

## Personal experience

- What ?
- Why ? 
- Alternatives ?
