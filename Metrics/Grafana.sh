# ============ 1. Update System ============
sudo apt update && sudo apt upgrade -y

# ============ 3. Install Grafana ============
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y "deb https://packages.grafana.com/oss/deb stable main"
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
sudo apt update
sudo apt install grafana -y
sudo systemctl enable --now grafana-server
