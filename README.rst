===============
Puppet-Elevator
===============

Puppet module for `Elevator <http://github.com/oleiade/Elevator>`_ install and configuration


Installation
------------

.. code-block:: bash

    cd /etc/puppet/modules/
    git clone git://github.com/oleiade/puppet-elevator elevator

There you go, you're ready to include elevator class in your nodes where you want Elevator installed

Where the stuff goes
--------------------

*Nota*: Most of these places are editable in Elevator config file

* Config file goes to /etc/elevator/elevator.conf
* Installs init.d script /etc/init.d/elevator-server
* Databases will be saved to /var/lib/elevator