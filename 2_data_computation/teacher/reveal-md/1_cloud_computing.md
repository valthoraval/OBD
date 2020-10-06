---
title: Cloud Computing
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

## Intro to Cloud Computing

![](https://media.giphy.com/media/5wWf7H89PisM6An8UAU/giphy.gif)

<!--s-->

### What is the Cloud ?

![](https://imgs.xkcd.com/comics/the_cloud.png)

<!--v-->

![](https://qph.fs.quoracdn.net/main-qimg-6a4c094bd9465389d35529b12b6caa77.webp)

<!--v-->

But it's a bit bigger... 

<img src="static/img/fb_datacenter.jpg" alt="" width="30%" height="30%" style="background:none; border:none; box-shadow:none; float:left;margin:0 10px 0 20px;"/>

<img src="https://www.datacenterknowledge.com/sites/datacenterknowledge.com/files/wp-content/uploads/2013/06/lulea-rows.jpg" alt="" width="25%" height="25%" style="background:none; border:none; box-shadow:none;"/>

<img src="https://www.datacenterknowledge.com/sites/datacenterknowledge.com/files/wp-content/uploads/2013/06/fb-lulea-external-fans.jpg" alt="" width="25%" height="25%" style="background:none; border:none; box-shadow:none;"/>

<img src="https://cdn.arstechnica.net/wp-content/uploads/2013/02/openrack2-640x426.jpg" alt="" width="25%" height="25%" style="background:none; border:none; box-shadow:none;"/>

<img src="https://engineering.fb.com/wp-content/uploads/2015/05/GM23qAAlFJW8xm4BABnMiwAAAAAAbj0JAAAD.png" alt="" width="25%" height="25%" style="background:none; border:none; box-shadow:none;"/>

(Facebook's data center & server racks)

<!--v-->

![](https://cloud.google.com/images/locations/regions.png)

Google Cloud Platform datacenters locations

<!--v-->

> The cloud is a real physical place - accessed over the internet - where a service is performed for you or where your stuff is stored. Your stuff is stoed in the cloud, not on your device because the cloud is not on any device; the cloud lives in datacenters. A program running on your device accesses the cloud over the internet. The cloud is infinite, accessible from anywhere, at any time

Todd Hoff in "Explain the Cloud like I'm 10"

<!--s-->

### What about "Cloud Computing" ?


For us the cloud is a set of *cloud providers* renting *cloud services* 

which become increasingly "abstracted" from the hardware they run on...

<!--v-->

Services ?

- "Renting a server" ... (this is pure "cloud computing")
- "Replicated & Secure storage space" ...
- "Autoscaling deployment of a microservice" ...

<!--v-->

<img src="https://www.matthewb.id.au/cloud/images/AWS-Services.png" alt="" width="50%" height="50%" style="background:none; border:none; box-shadow:none;"/>

(a portion of aws services)

<!--v-->

### How is it possible ?

![](https://blog.findthatlead.com/en/wp-content/uploads/2016/11/xmagic.jpg.pagespeed.ic.IbOWzrWHcR.jpg)

The magic of... virtualization !

<!--v-->

#### Virtualization ?

> In computing, virtualization refers to the act of creating a virtual (rather than actual) version of something, including virtual computer hardware platforms, storage devices, and computer network resources. 

Wikipedia

> Basically we are running software on "abstract hardware" which is a "portion" of a real computer ("bare metal")

<!--v-->

![](https://fchouteau.github.io/isae-practical-gcp/static/img/evolution_of_virtualization.png)

<!--v-->

![](https://miro.medium.com/max/10698/1*wE7TrQmFyRTDwh6VpbkbMQ.png)

<!--v-->

Definitions 

- Hypervisor (VMWare, Virtualbox, KVM): A hypervisor is a program for creating and running virtual machines.
- Virtual Machine: A virtual machine is the emulated equivalent of a computer system that runs on top of another system
- Containers: Isolated environments that share the same underlying OS (more this afternoon) & resources

<!--v-->

Consequence... 

![](https://i.kym-cdn.com/photos/images/newsfeed/000/038/431/Technologically-Impaired-Duck-Where-can-I-download--More-RAM8.jpg)

> Any sufficiently advanced technology is indistinguishable from magic. 

Clarke Third Law

<!--v-->

Hardware abstraction

- Hardware Abstraction ("download more RAM")
- Fine-grained resource allocation / sharing
- Decouple maintenance of hardware from maintenance of software

<!--v-->

Reliability, security...

![](https://yogeek.github.io/enseignement/Introduction_Virtualisation_CloudComputing/img/vm_charge_repartition.gif)

<!--s-->

### Where does it come from ? 

![](https://blog.scottlogic.com/dsmith/assets/featured/aws-logo.png)

<!--v-->

Once upon a time... 

Amazon (the e-commerce store) has "scaling" issues

![](https://cdn.chiefmartec.com/wp-content/uploads/2016/11/jeff_bezos_big_mandate.jpg)

<!--v-->

So basically Amazon became very good at *running* scalable infrastructure as *services*

- For themselves...
- ... but also for other partners (target)

And that infrastructure is often there to answer peak load...

<!--v-->

2002-2003; The idea

> Building an infrastructure that is completely standardized, completely automated, and relied extensively on web services for things like storage 

http://blog.b3k.us/2009/01/25/ec2-origins.html


<!--v-->

Let's sell it !

![](https://fchouteau.github.io/isae-practical-gcp/static/img/ec2.png)

<!--v-->

How does Amazon can offer free shipping to everybody ?

![](https://zdnet1.cbsistatic.com/hub/i/2019/01/31/90cc9931-483b-4512-b94c-20777c1e9694/122bf253e0610093f41ce36f3ce220e7/amazon2.png)

<!--s-->

### The many layers of Cloud Computing

<!--v-->

Hybrid Cloud ? Private Cloud ? Public Cloud ?

<img src="static/img/cloud.png" alt="" width="50%" height="50%" style="background:none; border:none; box-shadow:none;"/>

<!--v-->

Cloud providers are offering services with increasing layers of abstraction...

**I**nfrastructure **a**s **a** **S**ervice (IaaS)

**P**latform **a**s **a** **S**ervice (PaaS)

**S**oftware **a**s **a** **S**ervice (SaaS)

<!--v-->

Examples:

- Renting a server with hard drive and storing data
- Using data storage service like google cloud storage without managing the infrastructure
- Using google drive

<!--v-->

Examples:

- Renting a server with hard drive and storing data **IaaS**
- Using data storage service like google cloud storage without managing the infrastructure **PaaS**
- Using Dropbox **SaaS**

<!--v-->

<img src="https://blogs.bmc.com/wp-content/uploads/2017/09/saas-vs-paas-vs-iaas.png" alt="" width="50%" height="50%" style="background:none; border:none; box-shadow:none;"/>

<!--s-->

### Cloud Providers

<!--v-->

![](https://yogeek.github.io/enseignement/Introduction_Virtualisation_CloudComputing/img/cloud_vendors.jpg)

<!--v-->

🐓

<img src="https://www.comptoir-hardware.com/images/stories/_logos/ovhcloud.png" alt="" width="25%" height="25%" style="background:none; border:none; box-shadow:none;"/>

<img src="static/img/scaleway_logo_2018.png" alt="" width="25%" height="25%" style="background:none; border:none; box-shadow:none;"/>

<img src="https://fr.outscale.com/wp-content/uploads/2018/08/3DS_OUTSCALE_Dark-Blue_RGB.png" alt="" width="25%" height="25%" style="background:none; border:none; box-shadow:none;"/>

<img src="https://cloud.orange.com/ui/app/static/assets/brand/logo_header_login.png" alt="" width="25%" height="25%" style="background:none; border:none; box-shadow:none;"/>

<!--v-->

<img src="https://cdn.statcdn.com/Infographic/images/normal/18819.jpeg" alt="" width="50%" height="50%" style="background:none; border:none; box-shadow:none;"/>

<!--v-->

https://www.data-infrastructure.eu/GAIAX/Navigation/EN/Home/home.html

![](https://www.data-infrastructure.eu/GAIAX/Redaktion/EN/Bilder/gaia-x.jpg?__blob=normal&v=1&size=834w)
