lldpd
====

Install ``lldpd`` from EPEL.  Overrides can be used to install ``lldpad`` instead.

.. note::
    Requires the
    `epel <https://github.com/saltstack-formulas/epel-formula>`_ formula.

Available states
================

.. contents::
    :local:

``lldpd``
--------

Installs the ``lldpd`` package for the current OS.

The package, service, and dependent formula can be set by setting the appropraite
Pillar.  See `pillar.example <https://github.com/supertylerc/lldpd/pillar.example`_
for examples.

.. note::
    Only RedHat-based systems are currently supported.
    Only Centos 7 has been tested.
