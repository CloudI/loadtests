# [Tsung](http://tsung.erlang-projects.org/)

## `tsung_data.py`

The `tsung_data.py` script is used for generating accurate summary information
from the raw data produced by [Tsung](http://tsung.erlang-projects.org/).
Output was generated in the result directory with:

    ../../../../tsung/tsung_data.py -s HOSTNAME > ./YYYYMM_results_raw.txt

## Client Setup

More recent Alpine Linux [`live_cd` creation is available here](https://github.com/CloudI/live_cd#readme).

Load test LiveCDs can make any computer into a Tsung loadtest client.
Directions are provided for creating a load test LiveCD with
[Alpine Linux](https://github.com/CloudI/loadtests/tree/master/tsung/live_cd/alpine#readme).
