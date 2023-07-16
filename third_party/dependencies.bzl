load("//third_party/googletest:googletest.bzl", "fetch_googletest_cpp")
load("//third_party/aspect_bazel_lib:aspect_bazel_lib.bzl", "fetch_aspect_bazel_lib")
load("//third_party/io_bazel_stardoc:io_bazel_stardoc.bzl", "fetch_io_bazel_stardoc")
load("//third_party/rules_foreign_cc:rules_foreign_cc.bzl", "fetch_rules_foreign_cc")
load("//third_party/rules_pkg:rules_pkg.bzl", "fetch_rules_pkg")

def load_third_party_libraries():
    fetch_googletest_cpp()
    fetch_aspect_bazel_lib()
    fetch_io_bazel_stardoc()
    fetch_rules_foreign_cc()
    fetch_rules_pkg()
