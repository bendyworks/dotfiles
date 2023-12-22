# Bendyworks Dotfiles

## Installation

**NOTE:** These dotfiles are

1. Install [homebrew](https://brew.sh/)

   ```shell
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. Install [oh-my-zsh](https://ohmyz.sh/#install)

   ```shell
   sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

3. Install [chezmoi](https://www.chezmoi.io/user-guide/setup/)

   ```shell
   brew install chezmoi
   ```

4. Install powerlevel10k Fonts
   https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k
   **NOTE:** powerlevel10k itself is included as a submodule of our dotfile

5. Configure dotfiles

   ```shell
   chezmoi init https://github.com/bendyworks/dotfiles.git
   ```

6. Configure Powerlevel10k

   ```shell
   p10k configure
   ```

### Updating

1. check the `.chezmoiexternal.toml` file
   1. update the powerlevel10k version to the latest version
2. Update Externals

   ```shell
   chezmoi --refresh-externals apply
   ```
