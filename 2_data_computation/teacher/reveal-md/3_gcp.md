---
title: Google Cloud Platform
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

## Google Cloud Platform

![](https://berlioz.cloud/blog/images/google-cloud-platform-and-applications/header.png)

<!--v-->

- One of the main cloud provider
- Behind AWS in SaaS (serverless...)
- More "readable" product line (for a Cloud Provider...)
- Very good "virtual machine" management (per second billing, fine-grained resource allocation)

<!--v-->

![](https://static.packt-cdn.com/products/9781788837675/graphics/ee72c164-888d-4cec-b3f9-efd3b8e8e4cb.png)

<!--v-->

![](static/img/DarkPoster-hires.png)

<!--v-->

### Concepts: Zones and Regions

![](https://cloud.google.com/docs/images/overview/regions-zones.svg)

<!--v-->

### Concepts: Projects

![](https://cloud.google.com/docs/images/overview/console-ids.png)

- Access (Enabling API/Services)
- Ressources (Quota by project)
- Networking
- Billing

<!--v-->

### Concepts: Identity and Access Management

![](https://miro.medium.com/max/638/0*kGyUfNWZCk78hmPU.)

<!--v-->

### Main Products we are going to be looking at

- Google Compute Engine (virtual machine solutions)
- Google Cloud Storage (storage solutions)

<!--v-->

### GCE Basics:

- The VM solution for GCP
- Images: Boot disks for VM instances
    example:  `ubuntu-1804`
- Machine Types: Ressources available to your instance
    example: `n1-standard-8` (8 vCPU, 30 Gb RAM)
- Storage Options: "Attached disk" that can persist once the instance is destroyed... can be HDD, SDD...
- Preemptible: "Spot instances" on AWS", cheap but can be killed any minute by GCP

<!--v-->

### GCS Basics:

- Cheaper storage than persistent disks
- Can be shared between multiple instances / zones
- Higher latency
- Several types of storage (w/ different r/w costs & performance)
- Data is stored in "buckets" **whose name are globally unique**

<!--v-->

### Interacting with GCP:

- Using the gcloud CLI: https://cloud.google.com/sdk/install
- Using Google Cloud Shell: A small VM instance you can connect to with your browser

<!--s-->

## Self-paced Workshop

<!--v-->

### Objectives

- Configure your GCP credentials / account
- Connect to google cloud shell
- Launch your firsts VMs
- Connect to them via SSH & launch vs code from it

<!--v-->

### Demo

- Google Compute Engine Interface
- Google Cloud Shell
