if [ $EUID -ne 0 ]; then
    printf "not root\n"
    exit 1
fi
read -p "root password mysql: " Password
read -p "domain name: " Domain
export DEBIAN_FRONTEND="NONINTERACTIVE"
apt-get upgrade -y
apt-get install -y apache2 mysql-server php5-mysql php5 php5-fpm  
if [ $? -ne 0 ]; then
   echo "install failed"
fi
