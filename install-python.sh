printf '>> Installing Python ======================================================================\n\n'

brew install python
sudo -H pip install --upgrade pip
pip install numpy
pip install matplotlib
pip install pandas
pip install scipy
pip install scikit-learn
pip install tensorflow

brew install python3
sudo -H pip3 install --upgrade pip
pip3 install numpy
pip3 install matplotlib
pip3 install pandas
pip3 install scipy
pip3 install scikit-learn
pip3 install tensorflow
printf '\n\n'
