===============
Puppet-Elevator
===============

Puppet module for `Elevator <http://github.com/oleiade/Elevator>`_ install and configuration


Installation
============

Dependencies
------------

``puppet-elevator`` depends on ``pupetlabs/apt`` module, so first install step should be to install it if isn't already done:

.. code-block:: bash

    puppet module install puppetlabs/apt

Then you're able to install the elevator module

.. code-block:: bash

    cd /etc/puppet/modules/
    git clone git://github.com/oleiade/puppet-elevator elevator

There you go, you're ready to include elevator class in your nodes where you want Elevator installed


Configuration
=============

There is one class (elevator) that needs to be declared on all nodes managing any Elevator. These nodes are configured using the parameters of this class.


Using Parameterized Classes
---------------------------

**Declaration example**:

.. code-block:: puppet

    class { 'elevator':
            transport           => "tcp",
            port                => "4141",
            bind                => "0.0.0.0",
            db_storage_path     => "/var/lib/elevator",
            log_dir             => "/var/log/elevator",
            majordome_interval  => "2"
    }

Parameters
----------

The following lists all the class parameters the elevator class accepts.

* **transport**
    The transport layer for Elevator to use. `tcp` will be able to talk to remote clients, but each transactions costs. `ipc` will listen for clients requests on an unix socket: very, very fast, but local only.

* **port**
    The port to bind elevator server on to.

* **bind**
    The address to bind elevator to. Use 0.0.0.0 for enabling remote clients access.

* **db_storage_path**
    The filesystem endpoint where databases files will be stored

* **log_dir**
    The logs storage dir.

* **majordome_interval**
    The amount range when elevator will auto-unmount unused db since `majordome_interval`


Where the stuff goes
====================

*Nota*: Most of these places are editable in Elevator config file

* Config file goes to /etc/elevator/elevator.conf
* Installs init.d script /etc/init.d/elevator-server
* Databases will be saved to **db_storage_path**