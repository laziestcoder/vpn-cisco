echo "Updating System and Installing lib32zl, lib32ncurses5 ..."
sudo apt-get update && \
	sudo apt-get install lib32z1 lib32ncurses5

echo "Downloding anyconnect-linux64-4.7.01076-predeploy-k9.tar.gz from https://ftp.tugraz.at/tu-graz/vpn/ ...."
wget https://ftp.tugraz.at/tu-graz/vpn/anyconnect-linux64-4.7.01076-predeploy-k9.tar.gz

echo "extracting anyconnect-linux64-4.7.01076-predeploy-k9.tar.gz ..."
tar xvf anyconnect-linux64-4.7.01076-predeploy-k9.tar.gz 

echo "Entering anyconnect-linux64-4.7.01076/vpn ..."
cd anyconnect-linux64-4.7.01076/vpn

echo "Installing vpn client \'vpn_install.sh\'"
sudo ./vpn_install.sh 

echo "Entering anyconnect-linux64-4.7.01076/vpn ..."
cd .. 
cd dart/

echo "Installing dart"
sudo ./dart_install.sh

echo "Thank You for Installing Cisco AnyConnect VPN."
echo "Installation Complete."
