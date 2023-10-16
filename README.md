# Bendyworks Dotfiles

## Installation

**NOTE:** These dotfiles are

1. Install [homebrew](https://brew.sh/)
   ```
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```
1. Install [oh-my-zsh](https://ohmyz.sh/#install)
   ```
   sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```
1. Install [chezmoi](https://www.chezmoi.io/user-guide/setup/)
   ```
   brew install chezmoi
   ```
1. Install powerlevel10k Fonts
   https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k
   **NOTE:** powerlevel10k itself is included as a submodule of our dotfile

1. Configure dotfiles
   ```
   chezmoi init https://github.com/bendyworks/dotfiles.git
   ```
1. Configure Powerlevel10k
   ```
   p10k configure
   ```

## Update Externals

```shell
chezmoi --refresh-externals apply
chezmoi -R apply
```
