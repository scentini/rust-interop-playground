# rust-interop-playground
Rust-C++ Interop experiments

## Setup

`WORKSPACE` file in rust-interop-playground assumes you have a checkout of `cxx` and `rules_rust` just outside of the workspace:

```
├── cxx
├── rules_rust
├── rust-interop-playground
```

One way to initialize these directories is to run the following in a directory of your liking:

```sh
git clone https://github.com/dtolnay/cxx.git
git clone https://github.com/bazelbuild/rules_rust.git
git clone https://github.com/scentini/rust-interop-playground.git
```

Then you can try to build everything:

```sh
cd rust-interop-playground
bazel build ...
```