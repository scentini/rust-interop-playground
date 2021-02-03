load("@rules_rust//rust:rust.bzl", "rust_binary", "rust_library")
load("@cxx.rs//tools/bazel:rust_cxx_bridge.bzl", "rust_cxx_bridge")
load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")

rust_cxx_bridge(
    name = "bridge",
    src = "ffi.rs",
    deps = [
        ":cxxtest",
        ":rusttest",
    ],
)

rust_library(
    name = "ffi",
    srcs = ["ffi.rs"],
    edition = "2018",
    data = [":cxxtest.h"],
    deps = ["@cxx.rs//:cxx", ":rusttest"],
)

cc_library(
    name = "cxxtest",
    srcs = ["cxxtest.cc"],
    hdrs = ["cxxtest.h"],
)

rust_library(
    name = "rusttest",
    srcs = ["rusttest.rs"],
    crate_type = "staticlib",
)

rust_library(
    name = "rusttest_rlib",
    srcs = ["rusttest.rs"],
)

rust_binary(
    name = "rust_main",
    srcs = ["main.rs"],
    edition = "2018",
    deps = [
        ":bridge",
        ":ffi",
        "@cxx.rs//:cxx",
    ],
)

cc_binary(
    name = "cc_main",
    srcs = ["main.cc"],
    deps = [
        ":bridge",
        "@cxx.rs//:cxx",
    ],
)
