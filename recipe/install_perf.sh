#!/bin/bash
set -euo pipefail

cp perf/{*_lat,*_thr,benchmark_radix_tree} $PREFIX/bin
