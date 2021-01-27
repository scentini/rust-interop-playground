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

http_archive(
    name = "rules_rust",
    sha256 = "9207ddfcb58a15ec632fcf6a87c10c4634bd8bcbfeb2dde3652a7d23908e114d",
    strip_prefix = "rules_rust-1fe23158e5316c17b2ee2a252ee7165c5d83cc93",
    urls = [
        # Master branch as of 2019-10-07
        "https://github.com/bazelbuild/rules_rust/archive/1fe23158e5316c17b2ee2a252ee7165c5d83cc93.tar.gz",
    ],
)

load("@rules_rust//rust:repositories.bzl", "rust_repositories")
rust_repositories()
