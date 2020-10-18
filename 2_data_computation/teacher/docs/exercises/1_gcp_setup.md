# GCP Initial Setup & First Steps

![](https://cloud.google.com/docs/overview)

## 1. Create your GCP Account

[Overview link](https://cloud.google.com/docs/overview)

* Create an account within [Google cloud Platform](https://console.cloud.google.com) using your ISAE e-mail
* Use the code given by Dennis to get your free credits
* You should have 300$ + a "free tier" available to you
* From [the interface](https://console.cloud.google.com) you should [create a project](https://cloud.google.com/resource-manager/docs/creating-managing-projects) with a name of your choice

## 2. Install Google Cloud SDK & Configure the shell

If you want to interact with GCP from your computer, you will need to install the [Google Cloud SDK](https://cloud.google.com/sdk), which will also install a shell if you are on windows

If you don't, you will have to do everything from google cloud shell (it's not as easy), so I recommend installing the SDK.

The best ways to interact with google cloud SDK is with a terminal so in that order:

* Linux (either VM or native): https://cloud.google.com/sdk/docs/install#linux
* MacOS: https://cloud.google.com/sdk/docs/install#mac
* Windows Subsystem for Linux: see Linux
* Windows: https://cloud.google.com/sdk/docs/install#windows

If you are on windows, you should launch the google cloud sdk shell now,

Then you can configure the [google cloud sdk](https://cloud.google.com/sdk/docs/initializing) with your account

## 3. My first "VM", Google Cloud Shell

### Intro to Google Cloud Shell

* Google Cloud Shell is a "managed VM" made available to interact with the GCP platform without needing to configure locally the google cloud sdk. It is useful if you only have a web browser, but it may not work and it's not as easy as using a local terminal
* Compared to configured a VM by yourself, this one comes loaded with developer tools and gcp authentification correctly set up, and thus is faster to use,
* However the main drawback to using it as a development machine is the available disk space limited to 5 Gb (not enough to build docker images for example)
* Here is the [description of Google Cloud Shell](https://cloud.google.com/shell)
* Look at the [documentation](https://cloud.google.com/shell/docs/how-cloud-shell-works)

* Can you describe it with your own words ?
* What would be the closest service that you can find on GCP that is similar to cloud shell ?

### Connect to google cloud shell

* Follow [this guide](https://cloud.google.com/shell/docs/using-cloud-shell) for connecting to google cloud shell using the browser
* If this doesn't work on your machine for whichever reason, there is a workaround which requires having installed the `google-cloud-sdk`

### Exploring google cloud shell

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

* This is the hardware model... how many cores do you have available ? Which amount of RAM ?

  <details><summary>Solution</summary>

      `htop` will give you your current usage and available cores, or you can do `nproc`

  </details>

### Google Cloud Shell web preview "magic"

We will install [Visual Studio Code Server](https://github.com/cdr/code-server/), which is a cloud-based text editor, on Cloud Shell and preview it from your browser.

There is already a code editor in Google Cloud Shell (based on Theia) but we want to showcase the web preview as well, so we will do it manually,

* Enable [boost mode](https://cloud.google.com/shell/docs/how-cloud-shell-works#boost_mode)
* Download code-server `wget https://github.com/cdr/code-server/releases/download/v3.5.0/code-server-3.5.0-linux-x86_64.tar.gz`
* What does wget do ?
* Unzip it `tar -xzvf code-server-3.5.0-linux-x86_64.tar.gz`
* What is a tar archive ?
* Launch code server `code-server-3.5.0-linux-x86_64/bin`, `./code-server --port=8080` 
* [Open web preview on port 8080](https://cloud.google.com/shell/docs/using-web-preview) and log in
* Your password is stored on your instance... quit cloud server, find it (`cat ~/.config/code-server/config.yaml`) and relaunch cloud server
* You should be able to open files, get a terminal from inside a vscode inside your browser inside a VM ... Magic isn't it ?

It is possible that the browser-based method does not work on your machine, there is a [troubleshooting guide on this](https://cloud.google.com/shell/docs/limitations#private_browsing_and_disabled_third-party_cookies) (mainly it doesn't like too much privacy on your browser)

The alternative solution would be to connect to it from your terminal / local shell using the google cloud sdk,

Here is the documentation for [this](https://cloud.google.com/sdk/gcloud/reference/alpha/cloud-shell)

<details><summary>Command to run</summary>

  To connect to your google cloud shell instance and enable web preview, the command to run is

  `gcloud alpha cloud-shell ssh -- -L 8080:localhost:8080`

</details>

## 4. Google Colaboratory

Here, you will look at Google Colaboratory, which is a very handy tool for doing data science work (based on jupyter notebooks) on the cloud, using a preconfigured instance (which can access a GPU). You will be able to store data on Google Drive and to share

**I highly recommend using this for Jupyter based AML BE**, but I invite you to discover google colab *at home, or during AML BE* because it's a useful tool but mastering it is not relevant for our cloud class

### Intro & Description of Google Colaboratory

* Open [Google Colab](https://colab.research.google.com/notebooks/intro.ipynb)
* [Some intro](https://ledatascientist.com/google-colab-le-guide-ultime/), [another one](https://towardsdatascience.com/getting-started-with-google-colab-f2fff97f594c)
* Can you describe what it is ?
* Is it IaaS ? PaaS ? SaaS ? why exactly ?

<details><summary>Colab description</summary>

  Colaboratory, or "Colab" for short, allows you to write and execute Python in your browser, with

      Zero configuration required
      Free access to GPUs
      Easy sharing

  It offers a "jupyter notebook - like" interface, and allows to install your own dependencies by running bash commands inside the VM, with connection to google drive, google sheets

  You can manipulate the notebooks from your Google Drive and share it like it was a GDoc document

  It's essentially between SaaS and PaaS, it offers you a development platform without you having to manage anything except your code and your data (which are both data from the cloud provider point of view)

</details>

### Loading jupyter notebooks, interacting with google drive

*please do this at home or during AML BE*

* Open a notebook you previously ran on your computer (from AML class), you can [run a notebook on github directly in google colab](https://colab.research.google.com/github/googlecolab/colabtools/blob/master/notebooks/colab-github-demo.ipynb)
* Try to run it inside google colab
* Link [google colab and google drive](https://colab.research.google.com/notebooks/io.ipynb) and upload something on google drive (like an image) and display in on google colab

Other references:

* [Writing markdown to generate reports](https://colab.research.google.com/notebooks/markdown_guide.ipynb)
* [Installing custom dependencies](https://colab.research.google.com/notebooks/snippets/importing_libraries.ipynb)
