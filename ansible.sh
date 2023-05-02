#!/bin/bash

docker run --rm -it \
    -v $(pwd):/ansible \
    -v ~/.ssh:/root/.ssh \
    -v /etc/hosts:/etc/hosts \
    ghcr.io/hellt/ansible:2.13.8 ansible-playbook -i inventory.yml $@

# to test out container 
# docker run --rm -it \
#     -v $(pwd):/ansible \
#     -v ~/.ssh:/root/.ssh \
#     -v /etc/hosts:/etc/hosts \
#     --entrypoint bash \
#     ghcr.io/hellt/ansible:2.13.8