Aalto science-build configs
===========================


Anaconda flow of configuration
------------------------------

anaconda is configured in ``configs/*/anaconda/build_config.yaml``.
The bottom sections of these files should be (essentially) exactly the
same.  The top sections will vary depending on the deployments on
Triton, Aalto workstations, and so on.

All of these configs need to be kept in sync, and for that we have a
system where packages are first added to Triton, and then the config
is slowly synced to all configurations (otherwise it would become
unmanageable).  This happens in the numerical order you see below (1 →
2 → 3).

The very first thing everything is added and tested is
fgci-centos7-dev/, and proceeds from there to all of the other configs
in numerical order.  Note that it's not a linear process:

* 1. fgci-centos7-dev/
* 2. fgci-centos7-generic/
* 3. fgci-centos7-upstream/
* 2. fgci-cvmfs-centos7-generic/

After fgci-centos7-dev/, things can be propagated to Aalto
workstations:

* 2. aalto-ubuntu1804-dev/
* 3. aalto-ubuntu1804-generic/

These are special cases:

* centos/
* example/
