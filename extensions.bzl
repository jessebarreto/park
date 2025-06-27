load("//:repositories.bzl", "fetch_unity")

def _external_dependencies_impl(_ctx):
    fetch_unity()

external_dependencies = module_extension(
    implementation = _external_dependencies_impl,
)
