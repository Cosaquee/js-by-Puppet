if ! puppet --version; then
  sudo apt-get install -y puppet
else
    echo "Puppet already installed"
fi
