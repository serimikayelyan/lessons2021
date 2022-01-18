#!/bin/bash

    ip= ifconfig | grep "inet" | awk ' NR < 2  { print $2 }'
          echo "$ip"
