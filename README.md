# fallen-vim

> *“All glory fades. What remains is the code, written in silence.”*

**Fallen Knight** is a somber, dark colorscheme for Vim. Inspired by the image of a once-great warrior stripped of honor, dignity, and light. It provides a visually comfortable coding experience for those who remain in the shadows but still press on. Designed for long hours of focused programming, this theme is minimal, legible, easy on eyes
---

## 🌑 Features

- Designed for dark backgrounds (`set background=dark`)
- Low brightness, high contrast: reduces eye strain during night sessions
- Muted, battle-worn tones with subtle color accents
- Compatible with both terminal Vim and GUI (GVim, Neovim)
- True to its theme: every color has a weight, a purpose

---

## 🖼️ Screenshots

### Code View and visual inspiratio

---

## ⚙️ Installation

### With [vim-plug](https://github.com/junegunn/vim-plug)

Add the following to your `.vimrc`:

```vim
call plug#begin('~/.vim/plugged')

Plug 'mateuszsubocz/fallen.vim'

call plug#end()

```

or

```
mkdir -p .vim/colors
cd .vim/colors
git clone https://github.com/mateuszsubocz/fallen-vim
cd
vim .vimrc
```
and then

```
colorscheme fallen

set termguicolors
```
