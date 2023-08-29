
# Park Monolithic Repository

Park or **P**rogramming **a**nd **R**ecreation while getting **K**nowledge

This repository concentrates some fun projects for learning in a single place.

## Folders Structure

Disciplines are normally separated in folders and each subfolder is another repository.

As a general guideline, we are trying to to use a [categorization](https://en.wikipedia.org/wiki/Categorization) structure in every discipline and when in doubt using a structure similar to the one present in Wikipedia.

For example, as a discipline [Physics](https://en.wikipedia.org/wiki/Physics) is a world by itself. But we can subdivide it in [Mechanics](https://en.wikipedia.org/wiki/Mechanics), and then further subdivide it in [Kinematics](https://en.wikipedia.org/wiki/Kinematics), [Kinectics](https://en.wikipedia.org/wiki/Kinetics_(physics)), [Dynamics](https://en.wikipedia.org/wiki/Analytical_dynamics), and etc. So the same arrange is found in subfolder `physics`.

This same principle is replicated for [Mathematics](https://en.wikipedia.org/wiki/Mathematics) in subfolder `maths`, and [Computer Science](https://en.wikipedia.org/wiki/Computer_science) in subfolder `computer_science`.

Of course, there are some interesting fields that do not easily fit in this organization. 
For example, where does [Electronics](https://en.wikipedia.org/wiki/Electronics) would fit, it has electromagnetic components but it also contains material components for transistors.
For these cases, we have a subfolder called `engineering` as a kind of catch-all for these engineering-related fields that do not have their own discipline subfolder.

Now regarding learning specific software tools, technologies, etc, we will use the subfolder `tools`. For example, when learning about [Ansible](https://en.wikipedia.org/wiki/Ansible_(software)), we would find related code in `tools/iac/Ansible`.

```
park
├── maths
|   └── ...
├── physics
|   └── ...
├── computer_science
|   └── ...
├── economics
|   └── ...
├── engineering
|   ├── electronics
|   └── ...
├── tools
|   └── ...
└── third_party
|   ├── ...
|   ├── BUILD
|   └── dependencies.bzl
└── .bazelrc
├── .gitignore
├── LICENSE
├── README.md
└── WORKSPACE
```