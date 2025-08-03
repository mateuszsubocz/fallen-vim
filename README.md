# fallen-vim

> *“All glory fades. What remains is the code, written in silence.”*

**Fallen Knight** is a somber, dark colorscheme for Vim. Inspired by the image of a once-great warrior stripped of honor, dignity, and light. It provides a visually comfortable coding experience for those who remain in the shadows but still press on. Designed for long hours of focused programming, this theme is minimal, legible, easy on eyes
---

## 🌑 Features

- Designed for dark backgrounds (`set background=dark`)
- Low brightness, medium contrast: reduces eye strain during night sessions
- Muted, battle-worn tones with subtle color accents
- Compatible with both terminal Vim and GUI (GVim, Neovim)
- True to its theme: every color has a weight, a purpose
- 
---

## 🖼️ Screenshots

### Code View (generic vim theme on left, and fallen-vim on right) and visual inspiration


<img width="1895" height="1028" alt="screen" src="https://github.com/user-attachments/assets/5084cc3d-57dd-484d-ab10-def8b65ab22d" />
<img width="512" height="512" alt="ChatGPT Image Aug 2, 2025, 10_45_18 PM" src="https://github.com/user-attachments/assets/988e8b7d-64a7-4e50-be2a-c26e419afad9" />


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
