load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "bazel_skylib",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.0.2/bazel-skylib-1.0.2.tar.gz",
        "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.2/bazel-skylib-1.0.2.tar.gz",
    ],
    sha256 = "97e70364e9249702246c0e9444bccdc4b847bed1eb03c5a3ece4f83dfe6abc44",
)
load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")
bazel_skylib_workspace()

local_repository(
    name = "rules_rust",
    path = "../rules_rust"
)

load("@rules_rust//rust:repositories.bzl", "rust_repositories")
rust_repositories()

local_repository(
    name = "cxx",
    path = "../cxx"
)

load("@cxx//tools/bazel:vendor.bzl", "vendor")

vendor(
    name = "third-party",
    lockfile = "@cxx//third-party:Cargo.lock",
)
