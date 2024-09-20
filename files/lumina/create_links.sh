#!/bin/sh
ln -s `pwd`/lumina.service /etc/systemd/system/lumina.service
ln -s /etc/systemd/system/lumina.service /etc/systemd/system/multi-user.target.wants/lumina.service
