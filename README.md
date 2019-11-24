# Vim Maximum Awesome Docker
A docker based vim with almost all the features provided in a modern IDE. The docker makes sure that it's a portable solution 
and user don't have to mess around with base dependencies which can be frustating especially autocomplete feature.
Mounts the user home directory for easy traversal.

Uses python:3.7 as base image.

## Install
docker-compose up

### Shortcuts

* `,d` brings up [NERDTree](https://github.com/scrooloose/nerdtree), a sidebar buffer for navigating and manipulating files
* `,z` search files and contents at same time, best for large projects and most commonly used. No need to ctrlp or ag .
* `ds`/`cs` delete/change surrounding characters (e.g. `"Hey!"` + `ds"` = `Hey!`, `"Hey!"` + `cs"'` = `'Hey!'`) with [vim-surround](https://github.com/tpope/vim-surround)
* `spacebar` search current file.
* `\\` toggles visual selection comment lines
* `vii`/`vai` visually select *in* or *around* the cursor's indent
* `,[space]` strips trailing whitespace
* `^]` jump to definition using ctags
* `,l` begins aligning lines on a string, usually used as `,l=` to align assignments
* `^hjkl` move between windows, shorthand for `^w hjkl`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Acknowledgements

Thanks to the owners of the original maximum-awesome repo (https://github.com/square/maximum-awesome).
