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
    strip_prefix = "rules_haskell-aab9066f3de6185d92c828382059f587eb426e19",
    urls = ["https://github.com/tweag/rules_haskell/archive/aab9066f3de6185d92c828382059f587eb426e19.tar.gz"],
    sha256 = "80570c0d6b2fd819dc60f0208a5258f45e457afbebd02fa68fa7deb132ce9ebb",
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
