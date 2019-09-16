sudo -i
apt-get update && apt-get install htop
cd /servers/brightspot/webapps/
ln -sf /vagrant/*.war ./ROOT.war
