#!/bin/bash
set -ev

UBUNTU_VERSION=$(lsb_release -sr)
UBUNTU_VERSION=ubuntu"${UBUNTU_VERSION//.}"
CUDA=10.1.105-1
CUDA_SHORT=10.1

INSTALLER=cuda-repo-${UBUNTU_VERSION}_${CUDA}_amd64.deb
wget http://developer.download.nvidia.com/compute/cuda/repos/${UBUNTU_VERSION}/x86_64/${INSTALLER}
sudo dpkg -i ${INSTALLER}
wget https://developer.download.nvidia.com/compute/cuda/repos/${UBUNTU_VERSION}/x86_64/7fa2af80.pub
sudo apt-key add 7fa2af80.pub
sudo apt update -qq
sudo apt install -y cuda-core-${CUDA_SHORT/./-} cuda-cudart-dev-${CUDA_SHORT/./-} cuda-cufft-dev-${CUDA_SHORT/./-}
sudo apt clean

#sudo apt-get install aptitude  
#wget https://developer.download.nvidia.com/compute/cuda/repos/${UBUNTU_VERSION}/x86_64/cuda-ubuntu${UBUNTU_VERSION}.pin
#sudo mv cuda-ubuntu${UBUNTU_VERSION}.pin /etc/apt/preferences.d/cuda-repository-pin-600
#wget https://developer.download.nvidia.com/compute/cuda/11.1.1/local_installers/cuda-repo-ubuntu${UBUNTU_VERSION}-11-1-local_11.1.1-455.32.00-1_amd64.deb
#sudo dpkg -i cuda-repo-ubuntu${UBUNTU_VERSION}-11-1-local_11.1.1-455.32.00-1_amd64.deb
#sudo apt-key add /var/cuda-repo-ubuntu${UBUNTU_VERSION}-11-1-local/7fa2af80.pub
#sudo apt-get update
#sudo apt-get -y install cuda


