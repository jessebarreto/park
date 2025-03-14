workspace(name = "park")

# ######################
# # THIRD_PARTY
# ######################
load("//third_party:dependencies.bzl", "load_third_party_libraries")

load_third_party_libraries()

# ######################
# # GO SUPPORT
# ######################
load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains(version = "1.20.3")

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

gazelle_dependencies()

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")

protobuf_deps()

# ######################
# # C++ SUPPORT
# ######################

load("@rules_pkg//:deps.bzl", "rules_pkg_dependencies")

rules_pkg_dependencies()

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

load("@aspect_bazel_lib//lib:repositories.bzl", "aspect_bazel_lib_dependencies")

aspect_bazel_lib_dependencies()

######################
# PYTHON SUPPORT
######################

load("@rules_python//python:repositories.bzl", "py_repositories")

py_repositories()

load("@rules_python//python:repositories.bzl", "python_register_toolchains")
python_register_toolchains(
    name = "python_3_11",
    # Available versions are listed in @rules_python//python:versions.bzl.
    # We recommend using the same version your team is already standardized on.
    python_version = "3.11",
)

# load("@rules_python//python:pip.bzl", "pip_parse")
# pip_parse(
#     name = "pypi",
#     python_interpreter_target = "@python_3_11_host//:python",
#     requirements_lock = "//:requirements.txt",
# )
