load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

######################
# THIRD_PARTY
######################
def fetch_unity():
    maybe(
        http_archive,
        name = "unity",
        build_file = "//third_party/unity:unity.BUILD",
        strip_prefix = "Unity-2.5.2",
        urls = ["https://github.com/ThrowTheSwitch/Unity/archive/v2.5.2.tar.gz"],
        sha256 = "3786de6c8f389be3894feae4f7d8680a02e70ed4dbcce36109c8f8646da2671a",
    )
