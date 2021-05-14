badFile = *****

sudo killall aptitude
sudo killall synaptic
sudo aptitude purge $badFile && sudo aptitude remove $badFile && sudo aptitude clean && sudo aptitude autoclean
