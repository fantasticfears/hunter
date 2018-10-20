# Copyright (c) 2016-2018, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.2)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-abseil)

# DOCUMENTATION_START {
hunter_add_package(abseil)
find_package(abseil CONFIG REQUIRED)

add_executable(foo foo.cpp)
target_link_libraries(foo PUBLIC
absl::base
absl::algorithm
absl::container
absl::debugging
absl::memory
absl::meta
absl::numeric
absl::strings
absl::synchronization
absl::time
absl::utility
)
# DOCUMENTATION_END }
