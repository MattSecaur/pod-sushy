#!/bin/bash
exec /usr/local/bin/sushy-emulator -i 0.0.0.0 --port 8000 --libvirt-uri "qemu:///system"
