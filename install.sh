set -e

gem install net-ssh-multi
echo "Copying script to /usr/local/bin/..."
sudo -- bash -c 'curl -s https://raw.githubusercontent.com/catks/dogell/master/dogell > /usr/local/bin/dogell'
echo "Setting permissions..."
sudo chmod +x /usr/local/bin/dogell
echo "Done"
