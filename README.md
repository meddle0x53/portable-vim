# Portable Vim configuration example

This is a working example of portable vim configuration.
Try it like this:
`````
  git clone https://github.com/meddle0x53/portable-vim.git
  cd portable-vim
  
  cd .vim/bundle
  git clone https://github.com/gmarik/vundle.git
  cd ../../
  
  vim -u .vimrc
  
  :BundleInstall
`````
You can play with it adding and removing bundles from the VundeFile. They won't affect your vim configuration only the project one.
