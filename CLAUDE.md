# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal Neovim configuration built with nixvim, a Nix-based configuration system for Neovim. The configuration is structured as a Nix flake with modular plugin organization and supports multiple platforms (Linux and macOS, both x86_64 and aarch64).

## Development Commands

### Building and Running
- `nix run .` - Build and run nixvim with current configuration
- `nix run git+https://git.sajenim.dev/jasmine/nvim.nix.git` - Run from remote repository
- `nix flake check` - Verify configuration is valid and not broken
- `nix flake show` - Display available packages and checks for all systems
- `nix build` - Build the nixvim package without running it

### Development Workflow
- `nix develop` - Enter development shell (if devShell is available)
- `nix flake update` - Update flake inputs (nixpkgs, nixvim, flake-parts)
- `git log --oneline -10` - View recent configuration changes

## Architecture and Structure

### Core Configuration Files
- `flake.nix` - Main flake definition with inputs, outputs, and build configuration
- `config/default.nix` - Central module imports file that orchestrates all configuration pieces
- `config/options.nix` - Global Neovim options (number, tabstop, clipboard, etc.)
- `config/autocmds.nix` - Autocommands for automatic behaviors (window balancing on resize)

### Keymap Organization
The configuration separates keybindings into semantic namespaces under `config/keymaps/`:
- `general.nix` - Leader setup, page navigation, global keybindings
- `buffers.nix` - Buffer management operations (bq, bQ, bl)
- `windows.nix` - Window management operations (ws, wv, wq, wQ, wm)
- `find.nix` - Telescope find operations (ff, fg, fh, fc)
- `git.nix` - Unified git operations from gitsigns, fugitive, and telescope

### Plugin Organization
The configuration uses a hierarchical plugin structure under `config/plugins/`:

**Themes & Appearance** (`plugins/themes/`)
- Uses gruvbox-material theme with medium background and italic support

**Language Server Protocol** (`plugins/lsp/`)
- `lsp.nix` - Comprehensive LSP setup with servers for: C/C++ (clangd), Clojure, Haskell (hls), Lua, Nix (nil_ls), YAML, Python (pyright), Rust (rust_analyzer)
- `conform.nix` - Code formatting configuration
- Extensive LSP keybindings: `gd` (definition), `gr` (references), `K` (hover), `<leader>r` (rename)

**Plugin Collections** (`plugins/collections/`)
- `mini.nix` - Mini.nvim plugin suite
- `snacks.nix` - Snacks.nvim plugin collection (bufdelete functionality)

**Editor Enhancements** (`plugins/editor/`)
- `treesitter.nix` - Syntax highlighting and parsing
- `harpoon.nix` - Quick file navigation
- `sessions.nix` - Session management
- `maximize.nix` - Window maximization/zoom functionality
- `surround.nix` - Text object surrounding
- `commentary.nix` - Code commenting

**User Interface** (`plugins/ui/`)
- `lualine.nix` - Status line configuration
- `web-devicons.nix` - File type icons
- `whichkey.nix` - Keybinding hints and discovery

**Git Integration** (`plugins/git/`)
- `fugitive.nix` - Git commands within Neovim (plugin config only, keymaps in keymaps/git.nix)
- `gitsigns.nix` - Git change indicators in gutter (plugin config only, keymaps in keymaps/git.nix)

**Completion** (`plugins/cmp/`)
- `cmp.nix` - Autocompletion engine configuration

**Utilities** (`plugins/utils/`)
- `telescope.nix` - Fuzzy finder and picker (plugin config only, keymaps in keymaps/find.nix and keymaps/git.nix)
- `oil.nix` - File manager replacement for netrw
- `vimtex.nix` - LaTeX support

**Notes and Productivity** (`plugins/notes/`)
- `neorg.nix` - Org-mode like note taking (requires conceallevel=2, foldlevel=99)
- `markdown-preview.nix` - Live markdown preview
- `render-markdown.nix` - Enhanced markdown rendering
- `todo-comments.nix` - Highlight and manage TODO comments

### Key Configuration Patterns

**Leader Keys**
- Primary leader: `<Space>`
- Local leader: `<Backspace>` (using raw vim API call)
- Namespace prefixes:
  - `<leader>b` - Buffer operations (bq, bQ, bl)
  - `<leader>w` - Window operations (ws, wv, wq, wQ, wm)
  - `<leader>f` - Find operations (ff, fg, fh, fc)
  - `<leader>g` - Git operations (gs, gr, gb, gc, gd, gu, gp)
  - `<leader>gl` - Git list operations (glc, glb, gld, gls)
  - `<leader>l` - LSP operations

**Navigation Keybindings**
- Uses dedicated modifiers for fast navigation (muscle memory):
  - `Ctrl+Left/Right` - Cycle buffers
  - `Ctrl+Up/Down` - Cycle windows
  - `Ctrl+PageUp/PageDown` - Rotate windows
  - `Ctrl+Del` - Equalize window sizes
- Mirrors WezTerm (ALT) and XMonad (Super) for cross-application consistency

**Keybinding Philosophy**
- **Navigation**: Optimized for speed using dedicated modifiers
- **Management**: Optimized for clarity using leader + semantic namespaces
- **Separation of concerns**: Keymaps separated from plugin configurations
- **Container consistency**: Matches WezTerm's LEADER+p/t namespace pattern

**Platform Support**
- Multi-platform flake supporting x86_64-linux, aarch64-linux, x86_64-darwin, aarch64-darwin
- Uses `pkgsWithUnfree` to allow unfree packages when needed
- Each system gets its own package and check derivation

**Module Import Strategy**
- Central `default.nix` imports all configuration modules
- Keymaps organized by domain (buffers, windows, find, git) not by plugin
- Plugin files contain only configuration, keymaps are extracted to `keymaps/`
- Logical grouping by functionality (themes, LSP, editor, UI, etc.)
- Each plugin typically gets its own dedicated file for maintainability

### Development Settings
- Uses 2-space indentation with tab expansion
- Clipboard integration with system (`unnamedplus`)
- Persistent undo files enabled
- Split windows open to the right
- Update time set to 100ms for responsive interactions
- Session options configured for proper session restoration

When working on this configuration, always test changes with `nix flake check` before committing, and consider the modular structure when adding new plugins or features.