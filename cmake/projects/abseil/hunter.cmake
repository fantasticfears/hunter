# Copyright (c) 2016-2018, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    abseil
    VERSION
    20180600
    URL
    "https://github.com/abseil/abseil-cpp/archive/20180600.tar.gz"
    SHA1
    e928fc532f559f961e66cc16a249b0c988fea763
)

hunter_cmake_args(
    abseil
    CMAKE_ARGS
        BUILD_TESTING=OFF
        ABSL_RUN_TESTS=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(abseil)
hunter_download(PACKAGE_NAME abseil)
