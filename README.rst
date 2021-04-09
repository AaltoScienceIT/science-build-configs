Aalto science-build-configs
===========================

This repository containes instructions that are given to a CI system
defined in `science-build-rules <https://github.com/AaltoSciComp/science-build-rules>`_.
The configs are read by build rules that then go through the builds.

Spack flow of configurations
----------------------------

Spack is configured in ``configs/*/spack/build_config.yaml``.
The bottom sections of these files should be (essentially) exactly the
same.  The top sections will vary depending on the deployments on
Triton, Aalto workstations, and so on.

Installation paths, defaults for packages and modules and other spack
related configuration parameters are set in
`Spack's site configs <https://spack.readthedocs.io/en/latest/configuration.html#configuration-scopes>`_
`config.yaml`, `packages.yaml` and `modules.yaml`. Deployment
strategy is described in `deployment_config.yaml`.

All of these configs need to be kept in sync, and for that we have a
system where packages are first added to Triton, and then the config
is slowly synced to all configurations (otherwise it would become
unmanageable).  This happens in the numerical order you see below (1 →
2 → 3).

The very first thing everything is added and tested is
`fgci-centos7-anaconda-dev/`, and proceeds from there to all of the other configs
in numerical order.  Note that it's not a linear process:

* 1. `fgci-centos7-haswell-dev/`
* 2. `fgci-centos7-haswell/`

After fgci-centos7-dev/, things can be propagated to Aalto
workstations:

* 1. `aalto-ubuntu2004-skylake-dev/`
* 1. `aalto-ubuntu2004-skylake/`

Anaconda flow of configuration
------------------------------

anaconda is configured in ``configs/*/anaconda/build_config.yaml``.
The bottom sections of these files should be (essentially) exactly the
same.  The top sections will vary depending on the deployments on
Triton, Aalto workstations, and so on.

Installation paths are set in `config.yaml` and deployment strategy
is described in `deployment_config.yaml`.

All of these configs need to be kept in sync, and for that we have a
system where packages are first added to Triton, and then the config
is slowly synced to all configurations (otherwise it would become
unmanageable).  This happens in the numerical order you see below (1 →
2 → 3).

The very first thing everything is added and tested is
`fgci-centos7-anaconda-dev/`, and proceeds from there to all of the other configs
in numerical order.  Note that it's not a linear process:

* 1. `fgci-centos7-anaconda-dev/`
* 2. `fgci-centos7-anaconda/`

After fgci-centos7-dev/, things can be propagated to Aalto
workstations:

* 1. `aalto-ubuntu2004-anaconda-dev/`
* 1. `aalto-ubuntu2004-anaconda/`

Singularity flow of configuration
---------------------------------

Singularity builder is currently disabled. It will be restarted soon.
