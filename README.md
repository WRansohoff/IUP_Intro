# IUPLua examples

A handful of example scripts to introduce basic usage of IUP UI elements through the library's Lua bindings.

Mostly just a quick reference for myself, since these examples are derived from this excellent introductory guide:

http://webserver2.tecgraf.puc-rio.br/iup/en/basic/index.html

# IUP?

IUP is an MIT-licensed cross-platform GUI library with a refreshingly simple API and support for both C and Lua. More information can be found here:

http://webserver2.tecgraf.puc-rio.br/iup/

It looks like it could be a nice way to quickly iterate on ideas for desktop applications which need more flexibility than the UI options provided by a web browser.

For instructions on building and installing the library (sadly it's not quite as simple as `./configure && make && make install`):

http://webserver2.tecgraf.puc-rio.br/iup/en/building.html

I use LuaJIT, which supports Lua v5.1; I think that's a good idea, because LuaJIT is significantly faster than Lua and the IUP libraries will be configured for v5.1 by default if you build them from source.

Just be aware that the default `install` and `install_dev` scripts only seem to copy the compiled library files from `[build]/lib/[platform]/`, so you may need to manually copy the `.so` and `.a` files from `[build]/lib/[platform]/Lua51` into `/usr/lib/` or wherever you place the libraries. This applies to `IUP`, `IM`, and `CD`.
