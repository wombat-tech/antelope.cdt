# EOSIO smart contract build Docker image. Contains the necessary tools to build a smart contract
# wasm and ABI
FROM ubuntu:23.04

RUN apt-get update
# wget to download the CDK, cmake to build projects
RUN apt-get install -y wget cmake

# Download the CDK
RUN wget https://github.com/AntelopeIO/cdt/releases/download/v4.0.0/cdt_4.0.0_amd64.deb
# Install CDK
RUN apt-get install -y /cdt_4.0.0_amd64.deb
# Clean up a bit
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
