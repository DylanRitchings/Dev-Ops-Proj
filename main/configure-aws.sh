#!/bin/bash

# Configure aws
ssh -i "../files/vmkey.pem" ubuntu@"$(cat ../files/build_ip)"