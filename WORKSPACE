workspace(name = "example-haskell-with-bazel")

load(
    "@bazel_tools//tools/build_defs/repo:http.bzl",
    "http_archive",
)

http_archive(
    name = "rules_python",
    sha256 = "b6d46438523a3ec0f3cead544190ee13223a52f6a6765a29eae7b7cc24cc83a0",
    urls = ["https://github.com/bazelbuild/rules_python/releases/download/0.1.0/rules_python-0.1.0.tar.gz"],
)

http_archive(
    name = "rules_haskell",
    strip_prefix = "rules_haskell-a1d25d4cbd3864cfc7b076732a67954749a96e6a",
    urls = ["https://github.com/tweag/rules_haskell/archive/a1d25d4cbd3864cfc7b076732a67954749a96e6a.tar.gz"],
    sha256 = "41f2614fe2fc397351ac5d289bcf55bf2ccec7b2fb54b8a29a05e2c2aa782882",
)

load(
    "@rules_haskell//haskell:repositories.bzl",
    "rules_haskell_dependencies",
)

rules_haskell_dependencies()

load(
    "@rules_haskell//haskell:cabal.bzl",
    "stack_snapshot",
)

stack_snapshot(
    name = "stackage",
    packages = ["base"],
    local_snapshot = "//:stack-snapshot.yaml",
    haddock = False,
)

load(
    "@rules_haskell//haskell:toolchain.bzl",
    "rules_haskell_toolchains",
)

rules_haskell_toolchains(version = "9.2.1")
