3CX
===

This cookbook installs 3CX on a Debian 9.0 as per the steps highligted in
https://www.3cx.com/blog/docs/linux-version-9-stretch/.

 

Requirements
------------

 

### Platforms

Debian 9.0

 

### Chef

-   Chef 12.11+

 

### Dependent Cookbooks

-   hostname 0.4.2+

 

Attributes
----------

The following attributes are required for the setup to run successfully:

-   `node['TCXSetupURL']`: The setup expected an attribute named TCXSetupURL
    which should point to the XML setup file. To generate the XML setup file,
    take a look at https://www.3cx.com/docs/configure-pbx-automatically/
