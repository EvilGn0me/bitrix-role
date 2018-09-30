Bitrix-role
=========

This installs Bitrix CMS or Bitrix 24 with lemp.


Requirements
------------

Only Centos 7 is supported.
This role is standalone and does not require any others.
Nginx package will be removed, this role uses bx-nginx from bitrix repository.

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


License
-------

BSD
