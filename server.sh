echo "Instalando wget"
sudo yum install -y wget
echo "Instalando httpd"
sudo yum install -y httpd
cd /var/www/html
echo "Scraping Icesi"
wget www.icesi.edu.co
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
