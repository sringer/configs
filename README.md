# Install Nix
`curl -L https://nixos.org/nix/install | sh`

# Add Home Manager Channel
```
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
```

# Install Home Manager
`nix-shell '<home-manager>' -A install`

# Create Symlink
`ln -s {path to this repo}/home.nix ~/.config/nixpkgs/home.nix`
