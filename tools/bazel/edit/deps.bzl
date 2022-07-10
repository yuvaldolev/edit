load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def edit_rules():
    maybe(
        http_archive,
        name = "bazel_skylib",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.2.1/bazel-skylib-1.2.1.tar.gz",
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.2.1/bazel-skylib-1.2.1.tar.gz",
        ],
        sha256 = "f7be3474d42aae265405a592bb7da8e171919d74c16f082a5457840f06054728",
    )

    maybe(
        http_archive,
        name = "rules_rust",
        sha256 = "7fb9b4fe1a6fb4341bdf7c623e619460ecc0f52d5061cc56abc750111fba8a87",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_rust/releases/download/0.7.0/rules_rust-v0.7.0.tar.gz",
            "https://github.com/bazelbuild/rules_rust/releases/download/0.7.0/rules_rust-v0.7.0.tar.gz",
        ],
    )

def edit_deps():
    edit_rules()
