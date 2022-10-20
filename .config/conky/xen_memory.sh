#!/bin/bash
/usr/sbin/xentop -b -i 1 | tail -n +2 | awk '{sum += $6} END {print sum}'