load("@rules_rust//rust:repositories.bzl", "rules_rust_dependencies", "rust_register_toolchains")

def edit_rules_deps():
    rules_rust_dependencies()
    rust_register_toolchains(
        version = "1.62.0",
        edition = "2021",
        extra_target_triples = [],
    )

def edit_extra_deps():
    edit_rules_deps()
