# Base box with with the following software installed



## Purpose:
Base ubuntu box with docker and ansible enabled for development convenience.

* docker
* ansible
* jdk 1.8
* nodejs 6.x
* npm
* typescript
* yarn
* ts-node
* json-server

## Usage:

1. [Download and install vagrant for windows](https://www.vagrantup.com/downloads.html)
2. [Download and install Oracle Virtual Box](https://www.virtualbox.org/wiki/Downloads)
2. Clone this repository.
3. Cd into the `docker_base_win`
3. Create the box by entering the following command

```
vagrant up
vagrant ssh (*Note, this will fail on windows 7 and you will need to download putty.exe to ssh)
```

Once logged on, you should be able to access all of the installed software directly from the command line.

## Shared Folders

By default, the vagrant vm is configured to share 3 different folders with the host machine:

 * `/app` - folder where you put your application
 * `/vagrant` - your vagrant box folder
 * `/scripts` - any other scripts you would like to run as part of the box creation process.

