# GCP Initial Setup & First Steps

* TOC
{:toc}

![](https://cloud.google.com/docs/overview)

## 1. Create your GCP Account

[Overview link](https://cloud.google.com/docs/overview)

- Create an account within [Google cloud Platform](https://console.cloud.google.com) using your ISAE e-mail
- Use the code given by Dennis to get your free credits
- You should have 300$ + a "free tier" available to you
- From [the interface](https://console.cloud.google.com) you should [create a project](https://cloud.google.com/resource-manager/docs/creating-managing-projects)

## 2. Install Google Cloud SDK & Configure the shell

If you want to interact with GCP from your computer, you will need to install the [Google Cloud SDK](https://cloud.google.com/sdk).

If you don't, you will have to do everything from google cloud shell (it's not as easy), so I recommend installing the SDK.

The best ways to interact with google cloud SDK is with a terminal so in that order:

* Linux (either VM or native): https://cloud.google.com/sdk/docs/install#linux
* MacOS: https://cloud.google.com/sdk/docs/install#mac
* Windows Subsystem for Linux: see Linux
* Windows: https://cloud.google.com/sdk/docs/install#windows

If you are on windows, you should launch the google cloud sdk shell

Then you can configure the [google cloud sdk](https://cloud.google.com/sdk/docs/initializing) with your account

## 3. My first "VM", Google Cloud Shell

### Intro to Google Cloud Shell

* Google Cloud Shell
* Open your [google Cloud Shell](https://cloud.google.com/shell)
* Look at the [documentation](https://cloud.google.com/shell/docs/how-cloud-shell-works)

* Can you describe it with your own words ?
* What would be the closest service that you can find on GCP that is similar to cloud shell ?

### Google Cloud Shell is kinda magic ?

* Check available disk space

<details>
    <summary>Solution</summary>

  `df -h`
</details>

* Check the OS name

<details>
    <summary>Solution</summary>

  `cat /etc/os-release`

</details>

* Check the CPU model

<details>
  <summary>Solution</summary>

  `cat /proc/cpuinfo`

</details>

* This is the hardware model... how many cores do you have available ? Which amount of RAM ?

<details><summary>Solution</summary>
    htop will give you your current usage and available cores
</details>

### The magic of google cloud shell

We will install [Visual Studio Code Server](https://github.com/cdr/code-server/), which is a cloud-based text editor, on Cloud Shell and preview it from your browser.

* Enable [boost mode](https://cloud.google.com/shell/docs/how-cloud-shell-works#boost_mode)
* Download code-server `wget https://github.com/cdr/code-server/releases/download/v3.5.0/code-server-3.5.0-linux-x86_64.tar.gz`
* What does wget do ?
* Unzip it `tar -xzvf code-server-3.5.0-linux-x86_64.tar.gz`
* What is a tar archive ?
* Launch code server `code-server-3.5.0-linux-x86_64/bin`, `./code-server --port=8080` 
* Open web preview on port 8080 and log in
* Your password is stored on your instance... quit cloud server, find it (`cat ~/.config/code-server/config.yaml`) and relaunch cloud server
* You should be able to open files, get a terminal from inside a vscode inside your browser inside a VM ... Magic isn't it ?

This can be the main way you will interact with google cloud platform !

## 4. Google Colaboratory

Open [Google Colab](https://colab.research.google.com/notebooks/intro.ipynb)

[Some intro](https://ledatascientist.com/google-colab-le-guide-ultime/), [another one](https://towardsdatascience.com/getting-started-with-google-colab-f2fff97f594c)

- Can you describe what it is ?
- Is it IaaS ? PaaS ? SaaS ? Why ?

- Open a notebook you previously ran on your computer (from AML class), you can [run a notebook on github directly in google colab](https://colab.research.google.com/github/googlecolab/colabtools/blob/master/notebooks/colab-github-demo.ipynb)
- Try to run it inside google colab
- Link [google colab and google drive](https://colab.research.google.com/notebooks/io.ipynb) and upload something on google drive (like an image) and display in on google colab
