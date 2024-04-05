# ridl.nvim - RIDL highlighting for Neovim

Basic syntax highlighting for `.ridl` which is used in [webrcp](https://github.com/webrpc/webrpc)

This should be done better (treesitter?), but i don't know how yet.

## Installation

### Lazy

```lua
{
    "david-littlefarmer/ridl.nvim",
    config = function()
        vim.cmd('autocmd BufRead,BufNewFile *.ridl lua require("ridl").setup()')
    end,
}
```

![image](https://github.com/david-littlefarmer/ridl.nvim/assets/17728576/65f2880e-0297-462d-a9a0-e5974bde5339)
