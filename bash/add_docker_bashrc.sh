#!/bin/sh

cat >> $HOME/.bashrc <<EOF
# ------------------------------------
# Docker alias and function
# ------------------------------------
alias dps="docker ps --format 'table {{.Names}}\t{{.Command}}\t{{.Image}}\t{{.Status}}'"
alias dps-ports="docker ps --format 'table {{.Names}}\t{{.Ports}}\t{{.Status}}'"
alias dpa="docker ps -a"
alias di="docker images"
alias dcup="docker-compose up --build -d"
alias drmall="docker system prune --all --force --volumes"
dstop() { docker stop $(docker ps -a -q); }
drm() { docker rm $(docker ps -a -q); }
dlogs() { docker logs -f $1; }
dsh() { docker exec -it $1 /bin/sh; }
dbash() { docker exec -it $1 /bin/bash; }
EOF
