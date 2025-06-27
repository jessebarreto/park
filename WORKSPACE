workspace(name = "park")

load("@toolchains_llvm//toolchain:deps.bzl", "bazel_toolchain_dependencies")

bazel_toolchain_dependencies()

load("@toolchains_llvm//toolchain:rules.bzl", "llvm_toolchain")

llvm_toolchain(
    name = "llvm_toolchain",
    llvm_versions = {
        "": "16.0.0",
        "darwin-x86_64": "15.0.7",
    },
)

load("@rules_python//python:repositories.bzl", "py_repositories", "python_register_toolchains")

py_repositories()

python_register_toolchains(
    name = "python39",
    python_version = "3.9",
)

# load("@python39//:defs.bzl", "interpreter")
# load("@rules_python//python:pip.bzl", "pip_parse")

# pip_parse(
#     name = "pip",
#     incompatible_generate_aliases = True,
#     python_interpreter_target = interpreter,
#     requirements_lock = "//:requirements.txt",
# )

# load("@pip//:requirements.bzl", "install_deps")

# install_deps()