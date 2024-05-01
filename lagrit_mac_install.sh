# Building LaGriT
# Please checkout lagrit github page for more details

# Download LaGriT
git clone https://github.com/lanl/LaGriT.git
cd LaGriT/

# Install, configure, and build ExodusII with script
./MAC_install-exodus.sh

# Configure and build LaGriT using ExodusII libs:
mkdir build/ && cd build/
cmake .. -DLAGRIT_BUILD_EXODUS=ON
make

####################################################
# The make command will compile the libraries and build lagrit. 
# Use make VERBOSE=1 to view compile progress. 
# The lagrit executable is installed in the build/ directory.
#
# 	1. Type ./lagrit to make sure the executable is working.
# 	2. On the LaGriT command line type test which will execute a set of LaGriT commands.
# 	3. Type finish to exit.
####################################################

# Testing LaGriT
python test/runtests.py

#################################################### 
# To install PyLaGriT on your system, change to the PyLaGriT directory and run:
####################################################
python setup.py install