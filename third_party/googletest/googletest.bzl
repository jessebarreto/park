load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")  # buildifier: disable=load

def fetch_googletest_cpp():
    """This function defines a collection of repos and should be called in a WORKSPACE file"""
    maybe(
        http_archive,
        name = "googletest",
        url = "https://github.com/google/googletest/archive/release-1.10.0.zip",
        type = "zip",
        sha256 = "94c634d499558a76fa649edb13721dce6e98fb1e7018dfaeba3cd7a083945e91",
        strip_prefix = "googletest-release-1.10.0",
        build_file = "//third_party/googletest:googletest.BUILD",
    )