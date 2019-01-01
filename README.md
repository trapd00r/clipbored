[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=65SFZJ25PSKG8&currency_code=SEK&source=url) - Every tiny cent helps a lot!

# NAME

clipbored - continuously collects all selections in Xorg's clipboard buffers

# SYNOPSIS

    clipbored [OPTIONS]

# DESCRIPTION

**clipbored** is a daemon that continuously grabs all non-duplicate selections
in the X.org clipboard buffers and writes them to a plaintext history file for
later use.

There are several scripts distributed with clipbored that'll use the history
file for different purposes.

## Scripts

    dmenurl   - launch dmenu with all previously yanked URLs for you to select
                from.

    dmenuclip - launch dmenu listing all previously clipboarded content

# OPTIONS

    -l,   --last        show the n latest additions
    -c,   --clear       clear all history
    -n,   --no-daemon   do not detach from the shell
    -k,   --kill        kill a running clipbored session
    -h,   --help        show this help
    -m,   --man         display the manual
    -v,   --version     show version info

# ENVIRONMENT

The history file location is $XDG\_DATA\_HOME/clipbored/clips

The X selection to use can be specified by setting the **CLIPBORED\_X\_SELECTION**
environment variable.

If unset, or set to _primary_ , text is grabbed from the **XA\_PRIMARY** buffer.
When text is selected with the mouse, or piped through xclip/xsel with zero
arguments, it ends up here. This is most likely what you want.

If set to _clipboard_, text is grabbed from the **XA\_CLIPBOARD** buffer. Data
ends up in this buffer when an explicit action is taken to cut/copy text; used
in many GUI environments.

To the best of my knowledge, the _secondary_ buffer is rarely used at all.

The helper scripts can read properties from environment variables.
These are recognized:

    CLIPBORED_DMENU_LISTMODE    regular/vertical
    CLIPBORED_DMENU_NORMAL_FG   foreground color in HEX
    CLIPBORED_DMENU_NORMAL_BG   background color in HEX
    CLIPBORED_DMENU_SELECT_FG   selected item background color in HEX
    CLIPBORED_DMENU_SELECT_BG   selected item foreground color in HEX
    CLIPBORED_DMENU_FONT        font that will be used
    CLIPBORED_DMENU_LINES       how many lines that will be shown in vertical mode
    CLIPBORED_X_SELECTION       X buffer to use: primary, secondary, clipboard

# AUTHOR

      \ \ | / /
       \ \ - /
        \ | /
        (O O)
        ( < )
        (-=-)

    Magnus Woldrich
    CPAN ID: WOLDRICH
    m@japh.se
    http://japh.se

# CONTRIBUTORS

Markus Weimar suggested we should be able to pick the clipboard buffer to use.
Since I very rarely use any GUI applications, I wasn't aware of the fact that
when CTRL+C/CTRL+V etc is used, it goes into the XA\_CLIPBOARD buffer instead of 
the XA\_PRIMARY, probably rendering clipbored somewhat useless to the users using
these types of applications. :)

# REPORTING BUGS

Report bugs to [m@japh.se](https://metacpan.org/pod/m@japh.se) or [use the issue tracker](http://github.com/trapd00r/clipbored/issues).

clipbored home page: [http://github.com/trapd00r/clipbored/](http://github.com/trapd00r/clipbored/)

# COPYRIGHT

Copyright 2010, 2011, 2018- the **clipbored**s ["AUTHOR"](#author) and ["CONTRIBUTORS"](#contributors) as listed
above.

# LICENSE

This program is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.
