"let g:nvim_tree_side = 'left' "left by default
"let g:nvim_tree_width = 40 "30 by default
"let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
"let g:nvim_tree_auto_open = 0 "0 by default, opens the tree when typing `vim $DIR` or `vim`
"let g:nvim_tree_auto_close = 1 "0 by default, closes the tree when it's the last window
"let g:nvim_tree_auto_ignore_ft = 'startify'
"let g:nvim_tree_quit_on_open = 0 "0 by default, closes the tree when you open a file
"let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
"let g:nvim_tree_lsp_diagnostics = 1 "0 by default, will show lsp diagnostics in the three. See :help nvim_tree_lsp_diagnostics
"let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
"let g:nvim_tree_hide_dotfiles = 0 "0 by default, this option hides files and folders starting with a dot `.`
"let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
"let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
"" let g:nvim_tree_tab_open = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
"let g:nvim_tree_width_allow_resize  = 1 "0 by default, will not resize the tree when opening a file
"" let g:nvim_tree_disable_netrw = 0 "1 by default, disables netrw
"" let g:nvim_tree_hijack_netrw = 0 "1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
"let g:nvim_tree_show_icons = {
"    \ 'git': 1,
"    \ 'folders': 1,
"    \ 'files': 1,
"    \ }
""If 0, do not show the icons for one of 'git' 'folder' and 'files'
""1 by default, notice that if 'files' is 1, it will only display
""if nvim-web-devicons is installed and on your runtimepath
"
"" default will show icon by default if no icon is provided
"" default shows no icon by default
"let g:nvim_tree_icons = {
"    \ 'default': '',
"    \ 'symlink': '',
"    \ 'git': {
"    \   'unstaged': "+",
"    \   'staged': "✓",
"    \   'unmerged': "",
"    \   'renamed': "➜",
"    \   'untracked': "★",
"    \   'deleted': "",
"    \   'ignored': "◌"
"    \   },
"    \ 'folder': {
"    \   'default': "",
"    \   'open': "",
"    \   'empty': "",
"    \   'empty_open': "",
"    \   'symlink': "",
"    \   }
"    \ }
"
"nnoremap <silent> <C-e> :NvimTreeToggle<CR>
"" nnoremap <leader>r :NvimTreeRefresh<CR>
"" nnoremap <leader>n :NvimTreeFindFile<CR>
"" NvimTreeOpen and NvimTreeClose are also available if you need them
"
"" a list of groups can be found at `:help nvim_tree_highlight`
-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    }
  }
}
