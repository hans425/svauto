#! /bin/bash

# Copyright 2016, Sandvine Incorporated.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


clear


echo
echo "Welcome to SVAuto, the Sandvine Automation!"
echo


if  [ ! -d ~/svauto ]; then
        echo
        echo "Downloading SVAuto into your home directory..."
        echo

        cd ~
        git clone -b dev https://github.com/sandvine-eng/svauto.git
else
        echo
        echo "Apparently, you already have SVAuto, enjoy it!"
        echo
fi


echo
echo "Installing RAD Protowizard daemon"
echo
cd ~/svauto/ansible
ansible-playbook -c local svrad.yml
