# Learn Vyper basics

This repository is to showcase the Vyper fundamentals; here, you will find .vy files containing notes and explanations about the basics of the Vyper smart contracts language. These are meant to help you get used to the syntax. 

> **Note:** the following code and installation instructions were tested on Ubuntu 20.04.

# Table of contents

  - [Requirements](#requirements)
  - [List of files in this repo:](#list-of-files-in-this-repo)
  - [Installation](#installation)
    - [Install Python](#install-python)
      - [On Ubuntu:](#on-ubuntu)
    - [Install & create virtual environments](#install--create-virtual-environments)
    - [Install Vyper](#install-vyper)
  - [Compile a smart contract in Vyper](#compile-a-smart-contract-in-vyper)

## Requirements

- Python 3.6 or higher.
- Vyper.

## List of files in this repo:

The following is a list of `.vy` files that you can find in this repo. They contain basic syntax and some brief explanations to help you get acquainted with the Vyper smart contract language. 

  - HelloWorld.vy
  - ValueTypes.vy

## Installation 

### Install Python

Python 3.6 or higher is required to install Vyper. 

#### On Ubuntu:

Update your local system’s repository list.

```sh
sudo apt update
```

Install Python.

```sh
sudo apt install python3
```
Once Python is installed, you can check if it was installed correctly by typing this command.

```sh
python3 --version
```

It will return something like this if it was installed correctly.

```sh
Python 3.10.4
```
This page explanes how to [install Python in every OS](https://realpython.com/installing-python/).

### Install & create virtual environments

Installing Vyper in a virtual environment is recommended, so you can manage the version you want/need for any project.

Install PIP in case you don't have it yet.

```
sudo apt install python3-pip
```

Install virtual environments.

```
sudo pip install virtualenv
```

Create a virtual environment. 

```
python3 -m venv /path/to/new/environment
```

Keep in mind that you can place the virtual environment where you prefer.

Then activate it.

```
source /bin/activate
```

If it all works correctly, you will see the name of your environment in between parentheses before your account name, like this:

```
(chainstack) name@name:~/Documents/Coding/python/chainstack $
```

### Install Vyper

Install Vyper via PIP.

```
pip install vyper
```

To install a specific version use:

```
pip install vyper==0.2.15
```

Check out the Vyper docs to find [other installation methods](https://vyper.readthedocs.io/en/stable/installing-vyper.html#installing-vyper). 

## Compile a smart contract in Vyper

Once you have installed Vyper, you can write smart contracts in your favorite IDE and compile them directly from the console. 

> I use VS Code.

For this example, let's use the `HelloWorld.vy` contract from this repo. 

1. Create o download a `.vy` file in a folder.
1. Open a terminal from that folder.
1. Use the ´vyper´ command to compile the smart contract.

```sh
vyper HelloWorld.vy
```

If the contract compiles correctly, the console will display the bytecode. 

```sh
(vyper) soos@soos:~/Documents/Coding/vyper$ vyper HelloWorld.vy
0x346101595760266040527f48656c6c6f206465762c20796f752061726520706c6179696e672077697468206060527f56797065722e0000000000000000000000000000000000000000000000000000608052604080518060005560208201600082601f0160051c6002811161015957801561008d57905b8060051b8301518160010155600101818118610076575b50505050506100b66100a26000396100b66000f36003361161000c5761009e565b60003560e01c346100a45763cfae3217811861009c57600436186100a4576020806040528060400160005480825260208201600082601f0160051c600481116100a457801561006e57905b80600101548160051b840152600101818118610057575b505050508051806020830101601f82600003163682375050601f19601f825160200101169050810190506040f35b505b60006000fd5b600080fda165767970657283000306000b005b600080fd
```

You can also write Vyper contracts and deploy/test them from the Remix IDE, but note that if you do it in Remix it has to be `# version 0.2.0`, Remix uses the `0.2.16` compiler, at least by default.
