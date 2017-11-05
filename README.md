# dio

What's this? This is just the ansible repo for my private home network.

## Setting up chip

These are the steps required to prepare a http://getchip.com system:

1. Flash headless Debian
2. Login via serial
3. Connect to wifi

    $ nmcli device wifi list
    $ nmcli device wifi connect 'ssid' password 'password' ifname wlan0

Then - more generically applicable:

4. Create user ansible

    $ adduser --disabled-password ansible
    $ su - ansible
    $ mkdir .ssh/
    $ cat - > .ssh/authorized_keys
    $ chmod 700 .ssh ; chmod 600 .ssh/authorized_keys

5. Prepare ansible

    $ apt-get update && apt-get install -y python


## Running ansible

This should do all the work:

    $ ansible-playbook -i inventory.yml playbook.yml