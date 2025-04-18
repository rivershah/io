# This file is expanded from a template by cuda_configure.bzl
# Update cuda_configure.bzl#verify_build_defines when adding new variables.

load(":cc_toolchain_config.bzl", "cc_toolchain_config")

licenses(["restricted"])

package(default_visibility = ["//visibility:public"])

toolchain(
    name = "toolchain-linux-x86_64",
    exec_compatible_with = [
        "@bazel_tools//platforms:linux",
        "@bazel_tools//platforms:x86_64",
    ],
    target_compatible_with = [
        "@bazel_tools//platforms:linux",
        "@bazel_tools//platforms:x86_64",
    ],
    toolchain = ":cc-compiler-local",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)

cc_toolchain_suite(
    name = "toolchain",
    toolchains = {
        "local|compiler": ":cc-compiler-local",
        "darwin|compiler": ":cc-compiler-darwin",
        "x64_windows|msvc-cl": ":cc-compiler-windows",
        "x64_windows": ":cc-compiler-windows",
        "arm": ":cc-compiler-local",
        "aarch64": ":cc-compiler-local",
        "k8": ":cc-compiler-local",
        "piii": ":cc-compiler-local",
        "ppc": ":cc-compiler-local",
        "darwin": ":cc-compiler-darwin",
    },
)

cc_toolchain(
    name = "cc-compiler-local",
    all_files = ":crosstool_wrapper_driver_is_not_gcc",
    ar_files = ":crosstool_wrapper_driver_is_not_gcc",
    as_files = ":crosstool_wrapper_driver_is_not_gcc",
    compiler_files = ":crosstool_wrapper_driver_is_not_gcc",
    dwp_files = ":empty",
    linker_files = ":crosstool_wrapper_driver_is_not_gcc",
    objcopy_files = ":empty",
    strip_files = ":empty",
    # To support linker flags that need to go to the start of command line
    # we need the toolchain to support parameter files. Parameter files are
    # last on the command line and contain all shared libraries to link, so all
    # regular options will be left of them.
    supports_param_files = 1,
    toolchain_config = ":cc-compiler-local-config",
    toolchain_identifier = "local_linux",
)

cc_toolchain_config(
    name = "cc-compiler-local-config",
    builtin_include_directories = [
        "/dt7/usr/include/c++/7",
        "/dt7/usr/include/c++/7/x86_64-pc-linux-gnu",
        "/dt7/usr/include/c++/7/backward",
        "/dt7/usr/lib/gcc/x86_64-pc-linux-gnu/7/include",
        "/dt7/usr/lib/gcc/x86_64-pc-linux-gnu/7/include-fixed",
        "/dt7/usr/include",
        "/usr/local/cuda-12.3/targets/x86_64-linux/include",
        "/usr/local/cuda-12.3/include",
        "/usr/local/cuda-12.3/extras/CUPTI/include",
        "/usr/include",
    ],
    builtin_sysroot = "",
    cpu = "local",
    cuda_path = "",
    extra_no_canonical_prefixes_flags = ["-fno-canonical-system-headers"],
    host_compiler_path = "clang/bin/crosstool_wrapper_driver_is_not_gcc",
    host_compiler_prefix = "/usr/bin",
    host_compiler_warnings = [],
    host_unfiltered_compile_flags = [],
    linker_bin_path = "/usr/bin",
)

cc_toolchain(
    name = "cc-compiler-darwin",
    all_files = ":crosstool_wrapper_driver_is_not_gcc",
    ar_files = ":crosstool_wrapper_driver_is_not_gcc",
    as_files = ":crosstool_wrapper_driver_is_not_gcc",
    compiler_files = ":crosstool_wrapper_driver_is_not_gcc",
    dwp_files = ":empty",
    linker_files = ":crosstool_wrapper_driver_is_not_gcc",
    objcopy_files = ":empty",
    strip_files = ":empty",
    supports_param_files = 0,
    toolchain_config = ":cc-compiler-local-darwin",
    toolchain_identifier = "local_darwin",
)

cc_toolchain_config(
    name = "cc-compiler-local-darwin",
    builtin_include_directories = [
        "/dt7/usr/include/c++/7",
        "/dt7/usr/include/c++/7/x86_64-pc-linux-gnu",
        "/dt7/usr/include/c++/7/backward",
        "/dt7/usr/lib/gcc/x86_64-pc-linux-gnu/7/include",
        "/dt7/usr/lib/gcc/x86_64-pc-linux-gnu/7/include-fixed",
        "/dt7/usr/include",
        "/usr/local/cuda-12.3/targets/x86_64-linux/include",
        "/usr/local/cuda-12.3/include",
        "/usr/local/cuda-12.3/extras/CUPTI/include",
        "/usr/include",
    ],
    cpu = "darwin",
    extra_no_canonical_prefixes_flags = ["-fno-canonical-system-headers"],
    host_compiler_path = "clang/bin/crosstool_wrapper_driver_is_not_gcc",
    host_compiler_prefix = "/usr/bin",
    host_compiler_warnings = [],
    host_unfiltered_compile_flags = [],
    linker_bin_path = "/usr/bin",
)

cc_toolchain(
    name = "cc-compiler-windows",
    all_files = ":windows_msvc_wrapper_files",
    ar_files = ":windows_msvc_wrapper_files",
    as_files = ":windows_msvc_wrapper_files",
    compiler_files = ":windows_msvc_wrapper_files",
    dwp_files = ":empty",
    linker_files = ":windows_msvc_wrapper_files",
    objcopy_files = ":empty",
    strip_files = ":empty",
    supports_param_files = 1,
    toolchain_config = ":cc-compiler-windows-config",
    toolchain_identifier = "local_windows",
)

cc_toolchain_config(
    name = "cc-compiler-windows-config",
    builtin_include_directories = [
        "/dt7/usr/include/c++/7",
        "/dt7/usr/include/c++/7/x86_64-pc-linux-gnu",
        "/dt7/usr/include/c++/7/backward",
        "/dt7/usr/lib/gcc/x86_64-pc-linux-gnu/7/include",
        "/dt7/usr/lib/gcc/x86_64-pc-linux-gnu/7/include-fixed",
        "/dt7/usr/include",
        "/usr/local/cuda-12.3/targets/x86_64-linux/include",
        "/usr/local/cuda-12.3/include",
        "/usr/local/cuda-12.3/extras/CUPTI/include",
        "/usr/include",
    ],
    cpu = "x64_windows",
    msvc_cl_path = "msvc_not_used",
    msvc_env_include = "msvc_not_used",
    msvc_env_lib = "msvc_not_used",
    msvc_env_path = "msvc_not_used",
    msvc_env_tmp = "msvc_not_used",
    msvc_lib_path = "msvc_not_used",
    msvc_link_path = "msvc_not_used",
    msvc_ml_path = "msvc_not_used",
)

filegroup(
    name = "empty",
    srcs = [],
)

filegroup(
    name = "crosstool_wrapper_driver_is_not_gcc",
    srcs = ["clang/bin/crosstool_wrapper_driver_is_not_gcc"],
)

filegroup(
    name = "windows_msvc_wrapper_files",
    srcs = glob(["windows/msvc_*"]),
)
