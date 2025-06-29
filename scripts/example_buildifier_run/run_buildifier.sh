#!/bin/bash

# bazel run //:buildifier

bazel run -- @buildifier_prebuilt//:buildifier --lint=fix *