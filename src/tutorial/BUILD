load("@rules_rust//rust:rust.bzl", "rust_binary")
load("@cxx//tools/bazel:rust_cxx_bridge.bzl", "rust_cxx_bridge")
load("@rules_cc//cc:defs.bzl", "cc_library")

rust_cxx_bridge(
    name = "bridge",
    src = "main.rs",
    deps = [":lib"],
)

cc_library(
    name = "lib",
    srcs = ["cxxtest.cc"],
    hdrs = ["cxxtest.h"],
)

rust_binary(
    name = "cxxtest",
    srcs = ["main.rs"],
    deps = [
        ":bridge",
        "@cxx//:cxx",
    ],
)