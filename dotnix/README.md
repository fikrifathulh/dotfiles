# dotnix

Personal CLI packages, installed through a Nix profile.

## Add or remove a package
1. Edit the `paths` list in `flake.nix`
2. `git add flake.nix`
3. `nix profile upgrade --all`
4. `git commit -am "Describe change"`

## Update all packages to newer versions
    cd ~/.nix
    nix flake update
    nix profile upgrade --all
    git commit -am "Update flake.lock"

## Roll back a bad update
    git checkout flake.lock
    nix profile upgrade --all

## Useful commands
    nix profile list                 # what is installed
    nix profile remove <name>        # uninstall an entry
    nix search nixpkgs <name>        # find a package name
    nix develop                      # enter dev shell
    nix store gc                     # free disk space

## Neovim commands
    nix run .#neovim                # run it without installing
    nix profile install .#neovim    # install into your profile

## Notes
- Don't move this directory. The profile remembers its path.
- Never run these commands with sudo.
