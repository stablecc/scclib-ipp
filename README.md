# scclib import for Intel Integrated Performance Primitives

Requires an installed
[Intel ipp library](https://www.intel.com/content/www/us/en/developer/tools/oneapi/ipp.html).

## Installation

The IPP library should be installed in the default location `/opt/intel`, and shared libraries
made available at run time, for example:
```
$ cat /etc/ld.so.conf.d/ipp.conf 
/opt/intel/ipp/lib/intel64
$ sudo ldconfig
```

## Initialization

The IPP single-threaded library is used. Any modules that use IPP should call an initialization
routine:
```
#include <scc/ipp.h>

scc::ipp::init();
```

It is preferred to use `scc::ipp::init()` to initialize the library, as `ippInit()` is not
safe to call multiple times.

## Licensing

Source:
* [BSD 3-Clause License](LICENSE)

Redistribution:
* [Intel Simplified Software License](intel_license.txt)
