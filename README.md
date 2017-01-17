# Hyper.sh helper tools

This repo is for my helper scripts that make life easier when wroking with hyper.sh.


## Contents: 
Currently it contains the following scripts:

### hyper-list.sh
List all allocated resources . Gives a good indication of what you might need to clean up to avoid paying more than needed.

Example:
```
> ./hyper-list.sh 

--- Containers ------------------------------------------------------
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES               PUBLIC IP
--- Volumes ---------------------------------------------------------
DRIVER              VOLUME NAME         SIZE                CONTAINER
hyper               neodata             10 GB               
hyper               jenkinsdata         10 GB               
--- Images ----------------------------------------------------------
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
neo4j               3.0                 32771ba11b19        4 weeks ago         379.6 MB
praqma/gh-pages     latest              13821430800e        6 months ago        1.332 GB
--- FIP'S -----------------------------------------------------------
Floating IP         Container           Service
199.245.56.165                          
--- Services --------------------------------------------------------
Name                FIP                 Containers          Status              Message
--- Cron ------------------------------------------------------------
Name                Schedule            Image               Command
--- Security groups -------------------------------------------------
Name                Description
--- Snapshots -------------------------------------------------------
Snapshot Name       Volume              Size
---------------------------------------------------------------------
```

### hyper-clean.sh
Delete all containers and all volumes. 

This script is useful while initially playing around with hyper or while demoing hyper on a spare account that should be cleaned up fully.

NOTE: Don't use this script if you have volumes you would ike to keep.

TODO: Maybe find a way to improve script so it only deleted un-named volumes?

### hyper-clean-images.sh
Clean all images.

## Roadmap
These scripts will probably change a great deal once I start using hyper regularly and find out what my needs really are.

