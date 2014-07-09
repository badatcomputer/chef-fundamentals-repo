name             'email_handler'
maintainer       'Daniel Borcherding'
maintainer_email 'daniel.borcherding@gmail.com'
license          'Apache 2.0'
description      'email me on every chef run'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'chef_handler'
depends 'postfix'
depends 'mailx'
