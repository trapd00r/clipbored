# NAME

  clipbored - continuously collects all selections in Xorg's clipboard buffers

# SYNOPSIS

  clipbored [OPTIONS]

# DESCRIPTION

__clipbored__ is a daemon that continuously grabs all non-duplicate selections
in the X.org clipboard buffers and writes them to a plaintext history file for
later use.

There are several scripts distributed with clipbored that'll use the history
file for different purposes.

## Scripts

  dmenurl   - launch dmenu with all previously yanked URLs for you to select
              from.

  dmenuclip - launch dmenu listing all previously clipboarded content

  fmenuclip - do the same thing but vertically

# OPTIONS

  -n,   --no-daemon   do not detach from the shell
  -k,   --kill        kill a running clipbored session
  -h,   --help        show this help
  -m,   --man         display the manual

# ENVIRONMENT

The history file will be placed in $XDG_DATA_HOME/clipbored/clips

# AUTHOR

Written by Magnus Woldrich.

# REPORTING BUGS

Report bugs to trapd00r@trapd00r.se

clipbored home page: <http://github.com/trapd00r/clipbored/>

# COPYRIGHT

(C) Copyright 2010 Magnus Woldrich.

License GPLv2: GNU GPL version 2