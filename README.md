# scripts

just some scripts

## Jetson:
https://qengineering.eu/install-ubuntu-20.04-on-jetson-nano.html -> testing to see if this works

### Signal Processing
- install cupy
	- ```sudo pip install cupy```
- install miniforge (https://github.com/conda-forge/miniforge)
	- ```curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"```
	- ```bash Mambaforge-$(uname)-$(uname -m).sh```
- install cuSignal
	- https://github.com/rapidsai/cusignal#source-aarch64-jetson-nano-tk1-tx2-xavier-linux-os
- To activate and use cuSignal etc.
	- ```conda activate cusignal-dev```
- To deactivate cuSignal use:
	- ```conda deactivate```

- Install SDR tools:
	- https://wiki.gnuradio.org/index.php/InstallingGR#Ubuntu_PPA_Installation
	- https://github.com/gnuradio/gnuradio#pybombs
		- https://github.com/gnuradio/pybombs#pybombs 
	- https://github.com/rapidsai/cusignal#sdr-integration
		- https://github.com/pothosware/SoapySDR/wiki
		- https://github.com/roger-/pyrtlsdr
