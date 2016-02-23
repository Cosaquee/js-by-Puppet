if ! dpkg -l | grep -q puppetmaster; then
  sudo apt-get install -y puppetmaster
  sudo puppet agent --enable
else
    echo "Puppetmaster already installed"
fi
