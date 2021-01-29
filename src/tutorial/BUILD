load("@rules_rust//rust:rust.bzl", "rust_binary", "rust_library")
load("@cxx//tools/bazel:rust_cxx_bridge.bzl", "rust_cxx_bridge")
load("@rules_cc//cc:defs.bzl", "cc_library", "cc_binary")

rust_cxx_bridge(
    name = "bridge",
    src = "ffi.rs",
    deps = [":cxxtest"],
)

cc_library(
    name = "cxxtest",
    srcs = ["cxxtest.cc"],
    hdrs = ["cxxtest.h"],
)

rust_library(
    name = "rusttest",
    srcs = ["rusttest.rs"],
)

rust_binary(
    name = "rust_main",
    srcs = ["main.rs", "ffi.rs"],
    deps = [
        ":bridge",
        "@cxx//:cxx",
    ],
)

cc_binary(
    name = "cc_main",
    srcs = ["main.cc"],
    deps = [
        ":bridge",
        "@cxx//:cxx",
    ],
)