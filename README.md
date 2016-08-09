# Example InSpec Profile

This example shows the implementation of an InSpec [profile](../../docs/profiles.rst).

# Gem Dependencies
`gem install ruby-oci8` > database interface of ruby | gem 'ruby-oci8', '~> 2.2.2'


# Install Oracle Client Instance

https://help.ubuntu.com/community/Oracle%20Instant%20Client


# References
https://github.com/erikh/ruby-dbi

http://www.rubydoc.info/github/erikh/ruby-dbi



## Assessment Measurements

### 1. Application Path
>a. /u01 is exist?

>b. owned by user 'oracle' , group 'dba'?

### 2. Service & SID
>a. is Available?

>b. is Running?

>c. is default SID is boot up?


### 3. Access & Permission
>a. 'sys' user authorized to login as 'sysdba'?

>a. _SCHEME_USER_ authorized to login as 'default'?

>b. user able to fetch query?

>c. data verified existed in table?