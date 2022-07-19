load("@rules_rust//rust:repositories.bzl", "rules_rust_dependencies", "rust_register_toolchains")
load("@rules_rust//crate_universe:repositories.bzl", "crate_universe_dependencies")

def edit_rules_deps():
    rules_rust_dependencies()
    rust_register_toolchains(
        version = "1.62.0",
        edition = "2021",
        extra_target_triples = [],
    )

    crate_universe_dependencies()

def edit_extra_deps():
    edit_rules_deps()
