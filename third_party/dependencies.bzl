load("//third_party/googletest:googletest.bzl", "fetch_googletest_cpp")
load("//third_party/rules_cc:rules_cc.bzl", "fetch_rules_cc")

def load_third_party_libraries():
    fetch_googletest_cpp()
    fetch_rules_cc()