# scclib import for Intel Integrated Performance Primitives

Requires an installed
[Intel ipp library](https://www.intel.com/content/www/us/en/developer/tools/oneapi/ipp.html).

## installation

The IPP library should be installed in the default location `/opt/intel`, and shared libraries
made available at run time, for example:
```
$ cat /etc/ld.so.conf.d/ipp.conf 
/opt/intel/ipp/lib/intel64
$ sudo ldconfig
```

## initialization

The IPP single-threaded library is used. Any modules that use IPP must call an initialization
routine:
```
#include <scc/ipp.h>

scc::ipp::init();
```

It is preferred to use `scc::ipp::init()` to initialize the library, as `ippInit()` is not
safe to call multiple times.

## licensing

Original source:
* [BSD 3-Clause License](lic/bsd_3_clause.txt)

External and redistributable:
* [ipp](lic/intel.txt)
