#!/bin/sh
ip -f inet -o addr  | cut -d\  -f 7 | grep -v "127.0.0.1/8" | head -1

