
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

# buildifier: disable=function-docstring
def fetch_aspect_bazel_lib():
    maybe(
        http_archive,
        name = "aspect_bazel_lib",
        sha256 = "ee95bbc80f9ca219b93a8cc49fa19a2d4aa8649ddc9024f46abcdd33935753ca",
        strip_prefix = "bazel-lib-1.29.2",
        url = "https://github.com/aspect-build/bazel-lib/archive/refs/tags/v1.29.2.tar.gz",
    )
