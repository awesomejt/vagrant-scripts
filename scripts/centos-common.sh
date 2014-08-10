#!/bin/bash

# Update CentOS with any security patches
yum update -y --exclude=kernel

# Install common utils
yum install -y nano git unzip screen