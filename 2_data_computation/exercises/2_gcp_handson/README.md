# GCP Hands On

* TOC
{:toc}

## 1. My first Google Compute Engine Instance

First, we will make our first steps by creating a compute engine instance (a vm) using the console, connecting to it via SSH, interacting with it, uploading some files, and we will shut it down and make the magic happen by resizing it

### Creating my VM using the console

* Follow [this codelab](https://codelabs.developers.google.com/codelabs/cloud-create-a-vm) to create your VM
* Create a `n1-standard-2` instance with `ubuntu 18.04` as a base image
* Name it however you see fit
* **DO NOT SHUT IT DOWN** for now

### Connecting to SSH

* Connect to ssh from google cloud shell or your terminal to the machine

  <details><summary>Solution</summary>

      `gcloud compute ssh {USER}@{MACHINE NAME}`

  </details>

* Check available disk space

  <details><summary>Bash command to run</summary>

    `df -h`

  </details>

* Check the OS name

  <details><summary>Bash command to run</summary>

    `cat /etc/os-release`

  </details>

* Check the CPU model

  <details><summary>Solution</summary>

    `cat /proc/cpuinfo`

  </details>

### Transfering files from the computer to this machine



## 2. Interacting with Google Cloud Storage

Here we will discover google cloud storage, upload some files from your computer and download them from your instance in the cloud

*WIP*

## 3. Google Compute Engine from the CLI and "deep learning VMs"

Here we will use the google cloud sdk to create a more complex VM with a pre-installed image and connect to its jupyter server

This will be useful for the next part of our workshop because both git and docker are already installed !

**This is very important for the next workshop**

## 4. BONUS: Introduction to infrastructure as code
