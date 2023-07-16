load("//third_party/googletest:googletest.bzl", "fetch_googletest_cpp")
load("//third_party/aspect_bazel_lib:aspect_bazel_lib.bzl", "fetch_aspect_bazel_lib")
load("//third_party/io_bazel_stardoc:io_bazel_stardoc.bzl", "fetch_io_bazel_stardoc")

def load_third_party_libraries():
    fetch_googletest_cpp()
    fetch_aspect_bazel_lib()
    fetch_io_bazel_stardoc()
