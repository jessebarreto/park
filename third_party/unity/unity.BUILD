load("@rules_cc//cc:defs.bzl", "cc_library")

package(default_visibility = ["//visibility:public"])

cc_library(
    name = "unity",
    srcs = [
        "src/unity.c",
        "src/unity.h",
        "src/unity_internals.h",
    ],
    hdrs = [
        "src/unity.h",
        "src/unity_internals.h",
    ],
    strip_include_prefix = "src/",
)

alias(
    name = "unity_for_library",
    testonly = True,
    actual = ":unity",
)
