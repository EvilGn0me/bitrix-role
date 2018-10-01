Bitrix-role
=========

This installs Bitrix CMS or Bitrix 24 with lemp.


Requirements
------------

Only Centos 7 is supported.
This role is standalone and does not require any others.
Nginx package will be removed, this role uses bx-nginx from bitrix repository.

You will need to add to your ansible.cfg to make your variable experience better.
```
hash_behaviour = merge
```

First what you might want to adjust:
```
nginx:
  hostname: 'bitrix.host'
```


Role Variables
--------------

For all adjustable variables please check defaults/main.yml. You may change them as you wish in your inventory files.

Tests
--------------
You need ruby installed to run kitchen.
Also all dependencies installed via Bundler
```
bundle
```
then just run kitchen
```
kitchen test # creates image, installs role, run tests, destroy image
kitchen converge # creates image, installs role
kitchen verify # creates image(if not created), installs role(if not installed), run tests
```

TODO
--------------
* Add ability to add several bitrix sites.
