Puppet module for nullmailer
============================

Nullmailer is useful in situations where you have machines but do not wish
to configure them with a full email service (mail transfer agent, mta).

Particularly to send email about local activity to a centralised place.

By default, the module will configure things to be sent, via smtp, to:

	smtp.$::domain

to

	root@$::domain

i.e. given $::domain is 'example.com', mail would be sent to
root@example.com via SMTP to smtp.example.com

This may require you to configure your SMTP server to accept
incoming email from various machines.

NOTE: /etc/mailname must be set to a reasonable value. This
module will, by default, set it to $::fqdn

Basic usage
-----------

    class {'nullmailer':  }

To configure who will receive all email:

    class {'nullmailer':
        adminaddr => "puppet-rockstar@example.com"
    }

Or to change the machine where email is sent to:

    class {'nullmailer':
        remoterelay => "elsewhere.example.com"
    }

When modifying these parameters, please ensure the value is in
double quotes.

Other things to modify are listed in the init.pp file


Contributors
------------

 * [Anand Kumria](https://github.com/akumria) ([@akumria](https://twitter.com/akumria))
 * [Callum Macdonald](https://github.com/chmac)


Copyright and License
---------------------

Copyright 2012 [Linuxpeak](https://www.linuxpeak.com/) Pty Ltd.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
