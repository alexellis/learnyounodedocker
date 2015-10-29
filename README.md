# Dockerized learnyounode

## Intro

learnyounode is an interactive course to learn the basics of nodejs

There is not a lot of reason to put this in a docker container, but it is a 
familiar application and gives us something cool to work with.

When I started to put the exercises into a container I _naturally_ installed sshd 
along with nano and git, but as I learnt more about the 'docker way' I realised this was going against the grain.

This repo is my attempt to access everything needed to do the full course without 
having to interact with the container through a bash shell or ssh. To enable the correct parameters to be passed
into the container I have put together a quick bash script used to launch the container. The script is not essential
but it does save a lot of typing.

## Installation

* git clone this repo
* build the container with ./build.sh or `docker build -t alexellis2/learnyounode .`
* type in docker images and you will see *alexellis2/learnyounode* available in your 
library

## Running the course

* To list all available lessons type in 

`./learnyounode.sh`

* To see the instructions for a lesson: 

`./learnyounode.sh "HELLO WOLRD"`

* To try out your solution save your file as i.e. `ex1.js` and drop it in 
`exercises` then type: 

`./learnyounode.sh "HELLO WORLD" "ex1.js"`
