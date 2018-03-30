# CloudI Loadtest Results

Large binary files are stored here that provide the raw output from
loadtesting [CloudI](https://github.com/CloudI/CloudI/tree/develop/src).
The directory structure mimics the main CloudI source code repository
organization.

For summarized information, [go here](https://cloudi.org/faq.html#5_LoadTesting).

## `tsung_data.py`

The `tsung_data.py` script is used for generating accurate summary information
from the raw data produced by [Tsung](http://tsung.erlang-projects.org/).
Output was generated in the result directory with:

    ../../../../tsung_data.py -s HOSTNAME > ./YYYYMM_results_raw.txt

## SETUP

Load test LiveCDs can make any computer into a loadtest client.
Directions are provided for creating a load test LiveCD with
[Alpine Linux](https://github.com/CloudI/loadtests/tree/master/live_cd/alpine#readme).
