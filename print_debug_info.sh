#!/bin/bash

## Copyright © 2018 The OpenEBS Authors
## 
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
## 
##     http://www.apache.org/licenses/LICENSE-2.0
## 
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.

while sleep 60; do
    echo "=====[ $SECONDS seconds still running ]=====";
    ps -auxwww;
    netstat -napt;
    tail -20 /var/log/syslog
    tail -20 /tmp/istgt.log
    tail -20 /tmp/integration_test.log
    echo "============================================";
done
