About libiio-feedstock
======================

Feedstock license: [BSD-3-Clause](https://github.com/conda-forge/libiio-feedstock/blob/main/LICENSE.txt)


About libiio
------------

Home: https://github.com/analogdevicesinc/libiio

Package license: LGPL-2.1-or-later AND GPL-3.0-or-later

Summary: Library for interfacing with Linux IIO devices

Development: https://github.com/analogdevicesinc/libiio

Documentation: https://analogdevicesinc.github.io/libiio/

libiio is used to interface to the Linux Industrial Input/Output (IIO) Subsystem. The Linux IIO subsystem is intended to provide support for devices that in some sense are analog to digital or digital to analog converters (ADCs, DACs). This includes, but is not limited to ADCs, Accelerometers, Gyros, IMUs, Capacitance to Digital Converters (CDCs), Pressure Sensors, Color, Light and Proximity Sensors, Temperature Sensors, Magnetometers, DACs, DDS (Direct Digital Synthesis), PLLs (Phase Locked Loops), Variable/Programmable Gain Amplifiers (VGA, PGA), and RF transceivers. You can use libiio natively on an embedded Linux target (local mode), or use libiio to communicate remotely to that same target from a host Linux, Windows or MAC over USB or Ethernet or Serial.
Packages include:

  - `libiio1` contains the library
  - `libiio-c` contains the library shim for v0 compatibility
  - `libiio-dev` contains the development files for compiling against libiio
  - `pylibiio` contains the Python bindings for libiio
  - `libiio` contains command line tools and depends on all of the above

For Linux users of `libiio`, you will likely want to link the provided udev rule into your system installation in order for the hardware to have the correct permissions:

    sudo ln -s $CONDA_PREFIX/lib/udev/rules.d/90-libiio.rules /etc/udev/rules.d/
    sudo udevadm control --reload
    sudo udevadm trigger

Then, make sure your user account belongs to the plugdev group in order to be able to access your device:

    sudo usermod -a -G plugdev <user>

You may have to restart for this change to take effect.

About libiio
------------

Home: https://github.com/analogdevicesinc/libiio

Package license: LGPL-2.1-or-later AND GPL-3.0-or-later

Summary: Library for interfacing with Linux IIO devices

Development: https://github.com/analogdevicesinc/libiio

Documentation: https://analogdevicesinc.github.io/libiio/

libiio is used to interface to the Linux Industrial Input/Output (IIO) Subsystem. The Linux IIO subsystem is intended to provide support for devices that in some sense are analog to digital or digital to analog converters (ADCs, DACs). This includes, but is not limited to ADCs, Accelerometers, Gyros, IMUs, Capacitance to Digital Converters (CDCs), Pressure Sensors, Color, Light and Proximity Sensors, Temperature Sensors, Magnetometers, DACs, DDS (Direct Digital Synthesis), PLLs (Phase Locked Loops), Variable/Programmable Gain Amplifiers (VGA, PGA), and RF transceivers. You can use libiio natively on an embedded Linux target (local mode), or use libiio to communicate remotely to that same target from a host Linux, Windows or MAC over USB or Ethernet or Serial.
Packages include:

  - `libiio1` contains the library
  - `libiio-c` contains the library shim for v0 compatibility
  - `libiio-dev` contains the development files for compiling against libiio
  - `pylibiio` contains the Python bindings for libiio
  - `libiio` contains command line tools and depends on all of the above

For Linux users of `libiio`, you will likely want to link the provided udev rule into your system installation in order for the hardware to have the correct permissions:

    sudo ln -s $CONDA_PREFIX/lib/udev/rules.d/90-libiio.rules /etc/udev/rules.d/
    sudo udevadm control --reload
    sudo udevadm trigger

Then, make sure your user account belongs to the plugdev group in order to be able to access your device:

    sudo usermod -a -G plugdev <user>

You may have to restart for this change to take effect.

About libiio-c
--------------

Home: https://github.com/analogdevicesinc/libiio

Package license: LGPL-2.1-or-later AND GPL-3.0-or-later

Summary: Library for interfacing with Linux IIO devices

Development: https://github.com/analogdevicesinc/libiio

Documentation: https://analogdevicesinc.github.io/libiio/

libiio is used to interface to the Linux Industrial Input/Output (IIO) Subsystem. The Linux IIO subsystem is intended to provide support for devices that in some sense are analog to digital or digital to analog converters (ADCs, DACs). This includes, but is not limited to ADCs, Accelerometers, Gyros, IMUs, Capacitance to Digital Converters (CDCs), Pressure Sensors, Color, Light and Proximity Sensors, Temperature Sensors, Magnetometers, DACs, DDS (Direct Digital Synthesis), PLLs (Phase Locked Loops), Variable/Programmable Gain Amplifiers (VGA, PGA), and RF transceivers. You can use libiio natively on an embedded Linux target (local mode), or use libiio to communicate remotely to that same target from a host Linux, Windows or MAC over USB or Ethernet or Serial.
Packages include:

  - `libiio1` contains the library
  - `libiio-c` contains the library shim for v0 compatibility
  - `libiio-dev` contains the development files for compiling against libiio
  - `pylibiio` contains the Python bindings for libiio
  - `libiio` contains command line tools and depends on all of the above

For Linux users of `libiio`, you will likely want to link the provided udev rule into your system installation in order for the hardware to have the correct permissions:

    sudo ln -s $CONDA_PREFIX/lib/udev/rules.d/90-libiio.rules /etc/udev/rules.d/
    sudo udevadm control --reload
    sudo udevadm trigger

Then, make sure your user account belongs to the plugdev group in order to be able to access your device:

    sudo usermod -a -G plugdev <user>

You may have to restart for this change to take effect.

About libiio-dev
----------------

Home: https://github.com/analogdevicesinc/libiio

Package license: LGPL-2.1-or-later AND GPL-3.0-or-later

Summary: Library for interfacing with Linux IIO devices

Development: https://github.com/analogdevicesinc/libiio

Documentation: https://analogdevicesinc.github.io/libiio/

libiio is used to interface to the Linux Industrial Input/Output (IIO) Subsystem. The Linux IIO subsystem is intended to provide support for devices that in some sense are analog to digital or digital to analog converters (ADCs, DACs). This includes, but is not limited to ADCs, Accelerometers, Gyros, IMUs, Capacitance to Digital Converters (CDCs), Pressure Sensors, Color, Light and Proximity Sensors, Temperature Sensors, Magnetometers, DACs, DDS (Direct Digital Synthesis), PLLs (Phase Locked Loops), Variable/Programmable Gain Amplifiers (VGA, PGA), and RF transceivers. You can use libiio natively on an embedded Linux target (local mode), or use libiio to communicate remotely to that same target from a host Linux, Windows or MAC over USB or Ethernet or Serial.
Packages include:

  - `libiio1` contains the library
  - `libiio-c` contains the library shim for v0 compatibility
  - `libiio-dev` contains the development files for compiling against libiio
  - `pylibiio` contains the Python bindings for libiio
  - `libiio` contains command line tools and depends on all of the above

For Linux users of `libiio`, you will likely want to link the provided udev rule into your system installation in order for the hardware to have the correct permissions:

    sudo ln -s $CONDA_PREFIX/lib/udev/rules.d/90-libiio.rules /etc/udev/rules.d/
    sudo udevadm control --reload
    sudo udevadm trigger

Then, make sure your user account belongs to the plugdev group in order to be able to access your device:

    sudo usermod -a -G plugdev <user>

You may have to restart for this change to take effect.

About libiio1
-------------

Home: https://github.com/analogdevicesinc/libiio

Package license: LGPL-2.1-or-later AND GPL-3.0-or-later

Summary: Library for interfacing with Linux IIO devices

Development: https://github.com/analogdevicesinc/libiio

Documentation: https://analogdevicesinc.github.io/libiio/

libiio is used to interface to the Linux Industrial Input/Output (IIO) Subsystem. The Linux IIO subsystem is intended to provide support for devices that in some sense are analog to digital or digital to analog converters (ADCs, DACs). This includes, but is not limited to ADCs, Accelerometers, Gyros, IMUs, Capacitance to Digital Converters (CDCs), Pressure Sensors, Color, Light and Proximity Sensors, Temperature Sensors, Magnetometers, DACs, DDS (Direct Digital Synthesis), PLLs (Phase Locked Loops), Variable/Programmable Gain Amplifiers (VGA, PGA), and RF transceivers. You can use libiio natively on an embedded Linux target (local mode), or use libiio to communicate remotely to that same target from a host Linux, Windows or MAC over USB or Ethernet or Serial.
Packages include:

  - `libiio1` contains the library
  - `libiio-c` contains the library shim for v0 compatibility
  - `libiio-dev` contains the development files for compiling against libiio
  - `pylibiio` contains the Python bindings for libiio
  - `libiio` contains command line tools and depends on all of the above

For Linux users of `libiio`, you will likely want to link the provided udev rule into your system installation in order for the hardware to have the correct permissions:

    sudo ln -s $CONDA_PREFIX/lib/udev/rules.d/90-libiio.rules /etc/udev/rules.d/
    sudo udevadm control --reload
    sudo udevadm trigger

Then, make sure your user account belongs to the plugdev group in order to be able to access your device:

    sudo usermod -a -G plugdev <user>

You may have to restart for this change to take effect.

About pylibiio
--------------

Home: https://github.com/analogdevicesinc/libiio

Package license: LGPL-2.1-or-later AND GPL-3.0-or-later

Summary: Library for interfacing with Linux IIO devices

Development: https://github.com/analogdevicesinc/libiio

Documentation: https://analogdevicesinc.github.io/libiio/

libiio is used to interface to the Linux Industrial Input/Output (IIO) Subsystem. The Linux IIO subsystem is intended to provide support for devices that in some sense are analog to digital or digital to analog converters (ADCs, DACs). This includes, but is not limited to ADCs, Accelerometers, Gyros, IMUs, Capacitance to Digital Converters (CDCs), Pressure Sensors, Color, Light and Proximity Sensors, Temperature Sensors, Magnetometers, DACs, DDS (Direct Digital Synthesis), PLLs (Phase Locked Loops), Variable/Programmable Gain Amplifiers (VGA, PGA), and RF transceivers. You can use libiio natively on an embedded Linux target (local mode), or use libiio to communicate remotely to that same target from a host Linux, Windows or MAC over USB or Ethernet or Serial.
Packages include:

  - `libiio1` contains the library
  - `libiio-c` contains the library shim for v0 compatibility
  - `libiio-dev` contains the development files for compiling against libiio
  - `pylibiio` contains the Python bindings for libiio
  - `libiio` contains command line tools and depends on all of the above

For Linux users of `libiio`, you will likely want to link the provided udev rule into your system installation in order for the hardware to have the correct permissions:

    sudo ln -s $CONDA_PREFIX/lib/udev/rules.d/90-libiio.rules /etc/udev/rules.d/
    sudo udevadm control --reload
    sudo udevadm trigger

Then, make sure your user account belongs to the plugdev group in order to be able to access your device:

    sudo usermod -a -G plugdev <user>

You may have to restart for this change to take effect.

Current build status
====================


<table><tr>
    <td>GitHub Actions</td>
    <td>
      <a href="https://github.com/conda-forge/libiio-feedstock/actions/workflows/conda-build.yml">
        <img src="https://github.com/conda-forge/libiio-feedstock/actions/workflows/conda-build.yml/badge.svg?event=push&branch=main">
      </a>
    </td>
  </tr>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=9988&branchName=main">
            <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/libiio-feedstock?branchName=main">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>osx_64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=9988&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/libiio-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=9988&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/libiio-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_arm64_" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-libiio-green.svg)](https://anaconda.org/conda-forge/libiio) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/libiio.svg)](https://anaconda.org/conda-forge/libiio) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/libiio.svg)](https://anaconda.org/conda-forge/libiio) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/libiio.svg)](https://anaconda.org/conda-forge/libiio) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-libiio--c-green.svg)](https://anaconda.org/conda-forge/libiio-c) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/libiio-c.svg)](https://anaconda.org/conda-forge/libiio-c) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/libiio-c.svg)](https://anaconda.org/conda-forge/libiio-c) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/libiio-c.svg)](https://anaconda.org/conda-forge/libiio-c) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-libiio--dev-green.svg)](https://anaconda.org/conda-forge/libiio-dev) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/libiio-dev.svg)](https://anaconda.org/conda-forge/libiio-dev) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/libiio-dev.svg)](https://anaconda.org/conda-forge/libiio-dev) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/libiio-dev.svg)](https://anaconda.org/conda-forge/libiio-dev) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-libiio1-green.svg)](https://anaconda.org/conda-forge/libiio1) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/libiio1.svg)](https://anaconda.org/conda-forge/libiio1) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/libiio1.svg)](https://anaconda.org/conda-forge/libiio1) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/libiio1.svg)](https://anaconda.org/conda-forge/libiio1) |
| [![Conda Recipe](https://img.shields.io/badge/recipe-pylibiio-green.svg)](https://anaconda.org/conda-forge/pylibiio) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/pylibiio.svg)](https://anaconda.org/conda-forge/pylibiio) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/pylibiio.svg)](https://anaconda.org/conda-forge/pylibiio) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/pylibiio.svg)](https://anaconda.org/conda-forge/pylibiio) |

Installing libiio
=================

Installing `libiio` from the `conda-forge` channel can be achieved by adding `conda-forge` to your channels with:

```
conda config --add channels conda-forge
conda config --set channel_priority strict
```

How to use
----------

<details>
<summary>With conda</summary>

```
conda install libiio libiio-c libiio-dev libiio1 pylibiio
```

</details>

<details>
<summary>With mamba</summary>

```
mamba install libiio libiio-c libiio-dev libiio1 pylibiio
```

</details>

<details>
<summary>With pixi</summary>

```
# for adding to your local project
pixi add libiio libiio-c libiio-dev libiio1 pylibiio
# for installing globally
pixi global install libiio libiio-c libiio-dev libiio1 pylibiio
```

</details>

Search package versions
-----------------------

It is possible to list all of the versions of `libiio` available on your platform:

<details>
<summary>With conda</summary>

```
conda search libiio --channel conda-forge
```

</details>

<details>
<summary>With mamba</summary>

```
mamba search libiio --channel conda-forge
```

</details>

<details>
<summary>With pixi</summary>

```
pixi search libiio --channel conda-forge
```

</details>

<details>
<summary>With mamba repoquery, which may provide more information</summary>

```
# Search all versions available on your platform:
mamba repoquery search libiio --channel conda-forge

# List packages depending on `libiio`:
mamba repoquery whoneeds libiio --channel conda-forge

# List dependencies of `libiio`:
mamba repoquery depends libiio --channel conda-forge
```

</details>


About conda-forge
=================

[![Powered by
NumFOCUS](https://img.shields.io/badge/powered%20by-NumFOCUS-orange.svg?style=flat&colorA=E1523D&colorB=007D8A)](https://numfocus.org)

conda-forge is a community-led conda channel of installable packages.
In order to provide high-quality builds, the process has been automated into the
conda-forge GitHub organization. The conda-forge organization contains one repository
for each of the installable packages. Such a repository is known as a *feedstock*.

A feedstock is made up of a conda recipe (the instructions on what and how to build
the package) and the necessary configurations for automatic building using freely
available continuous integration services. Thanks to the awesome service provided by
[Azure](https://azure.microsoft.com/en-us/services/devops/), [GitHub](https://github.com/),
[CircleCI](https://circleci.com/), [AppVeyor](https://www.appveyor.com/),
[Drone](https://cloud.drone.io/welcome), and [TravisCI](https://travis-ci.com/)
it is possible to build and upload installable packages to the
[conda-forge](https://anaconda.org/conda-forge) [anaconda.org](https://anaconda.org/)
channel for Linux, Windows and OSX respectively.

To manage the continuous integration and simplify feedstock maintenance,
[conda-smithy](https://github.com/conda-forge/conda-smithy) has been developed.
Using the ``conda-forge.yml`` within this repository, it is possible to re-render all of
this feedstock's supporting files (e.g. the CI configuration files) with ``conda smithy rerender``.

For more information, please check the [conda-forge documentation](https://conda-forge.org/docs/).

Terminology
===========

**feedstock** - the conda recipe (raw material), supporting scripts and CI configuration.

**conda-smithy** - the tool which helps orchestrate the feedstock.
                   Its primary use is in the construction of the CI ``.yml`` files
                   and simplify the management of *many* feedstocks.

**conda-forge** - the place where the feedstock and smithy live and work to
                  produce the finished article (built conda distributions)


Updating libiio-feedstock
=========================

If you would like to improve the libiio recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`conda-forge` channel, whereupon the built conda packages will be available for
everybody to install and use from the `conda-forge` channel.
Note that all branches in the conda-forge/libiio-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks, and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@ryanvolz](https://github.com/ryanvolz/)

