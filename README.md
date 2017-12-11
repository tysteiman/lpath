# lpath
A wrapper around viewing files in your path with less

## Usage
You can access the script however you want, as a binary or symlink.

Assuming lpath is in your PATH you can call `lpath <file/command>` to open the file in less.

### Example
`lpath rake`

This will less the results (file path) of `which rake`.

## Configuration
You can configure lpath via the `~/.lpath` file. This uses standard BASH syntax
and will be sourced when you use lpath.

### Variables
`LPATH_CMD` You can set this variable in order to not default to using
the `less` command when opening files. Example:

`LPATH_CMD=vim` will run the result of `which <file>` in vim instead of less.
