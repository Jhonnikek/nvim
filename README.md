# Nvim

My personal nvim config using [kickstart](https://github.com/nvim-lua/kickstart.nvim/tree/master) as starting point

## Installation

### Install Dependencies

External Requirements:
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- [fd-find](https://github.com/sharkdp/fd#installation)
- [tree-sitter-cli](https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/README.md#installation)
- [markdownlint-cli](https://github.com/igorshubovych/markdownlint-cli)
- [wl-clipboard](https://github.com/bugaevc/wl-clipboard)
- [Nerd Font](https://www.nerdfonts.com/)

```bash
sudo pacman -S --noconfirm --needed gcc make git ripgrep fd tree-sitter-cli unzip neovim markdownlint-cli wl-clipboard
```

### Clone repo

> [!NOTE]
> Backup your previous configuration (if any exists)

```bash
git clone https://github.com/Jhonnikek/nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```
