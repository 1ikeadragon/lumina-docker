#!/bin/sh
ln -s `pwd`/hexvault.service /etc/systemd/system/hexvault.service
ln -s /etc/systemd/system/hexvault.service /etc/systemd/system/multi-user.target.wants/hexvault.service
