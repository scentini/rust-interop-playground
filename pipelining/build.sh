#!/bin/bash

set -euo pipefail

########################## Cleanup
rm -f *.rlib *.rmeta

########################## foo + bar

# rustc \
#   --emit=link \
#   --crate-type=rlib \
#   --edition=2018 \
#   foo.rs
# rustc \
#   --emit=link \
#   --crate-type=rlib \
#   --edition=2018 \
#   bar.rs

rustc \
  --emit=metadata,link \
  --crate-type=rlib \
  foo.rs
rustc \
  --emit=metadata,link \
  --crate-type=rlib \
  bar.rs

rm *.rlib

########################## middle
rustc \
  --emit=link \
  --crate-type=rlib \
  --edition=2018 \
  middle.rs \
  -L . \
  --extern foo \
  --extern bar

rustc \
  --emit=link \
  --crate-type=rlib \
  --edition=2018 \
  foo.rs
rustc \
  --emit=link \
  --crate-type=rlib \
  --edition=2018 \
  bar.rs

########################## main
rustc \
  --edition=2018 \
  --extern middle \
  -L . \
  main.rs