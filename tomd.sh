#! /bin/sh

# Process pasteboard contents to md table. Thanks Andy Lester .
# Copy table from Numbers or other tab-delimited spreadsheet.
pbpaste | perl -le'$_=<>;&x;s/[^|]/-/g;&x;for(<>){&x}sub
x{chomp;s/\t/|/g;print"|$_|";}' | pbcopy

#Done.
echo "Styled pasteboard to table"