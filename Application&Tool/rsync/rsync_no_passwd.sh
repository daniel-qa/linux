#!/bin/bash
rsync -av --password-file=rsyncd.secrets /opt/IES_CN_DB/publicitem.sql   daniel@192.168.1.2::IES/CN/
