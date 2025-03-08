## My build of neovim in lua 

#### Hove to build Neovim with my configuration.

<br>

> Before starting, ensure you have:
> - **neovim** 
> - **ripgrep** - for the telescope plugin to work. 

<br> 

### Quickstart with my config:
```
cd ~/.config/ && git clone https://github.com/styrman-g/nvim
```
- My structure are as follow:
├── init.lua
├── lua
│   ├── keymaps.lua
│   ├── options.lua
│   └── plugins
│       ├── keymaps.lua
│       ├── lazy.lua
│       └── options.lua
└── README.md

- I have nothing in my init.lua file. I only recuire the other files.
- All my vim keybindings are in keymaps.lua
- All my vim options are in options.lua
- All my keybindings for plugins are in plugins/keymaps.lua
- All my options for plugins are in plugins/options.lua
- I use lazy for installing pluggins

<br>
