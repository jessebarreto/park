workspace(name = "park")

# ######################
# # THIRD_PARTY
# ######################
load("//third_party:dependencies.bzl", "load_third_party_libraries")
load_third_party_libraries()

# ######################
# # GO SUPPORT
# ######################
load("@io_bazel_rules_go//go:deps.bzl", "go_rules_dependencies", "go_register_toolchains")
go_rules_dependencies()
go_register_toolchains(version = "1.20.3")

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")
gazelle_dependencies()

# ######################
# # C++ SUPPORT
# ######################

load("@rules_pkg//:deps.bzl", "rules_pkg_dependencies")
rules_pkg_dependencies()

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")
bazel_skylib_workspace()

load("@aspect_bazel_lib//lib:repositories.bzl", "aspect_bazel_lib_dependencies")
aspect_bazel_lib_dependencies()

# TODO