load(
    "@rules_rust//rust:rust.bzl",
    "rust_binary",
)

rust_binary(
    name = "hello",
    srcs = glob(["src/main.rs"]),
    visibility = ["//visibility:public"],
    deps = [
        "@cxx//:cxx",
    ],
)