.. _BIG-IP AGC config guides:

F5 BIG-IP Access Guided Configuration
======================================

Overview
--------

Access Guided Configuration provides an easy way to create BIG-IP configurations for categories of Access use cases. Follow the steps below to work with Access Guided Configurations.

#. Logon to the BIG-IP user interface and click :menuselection:`Access -> Guided Configuration`
#. Select the :guilabel:`Federation` category.

Federation category includes various use cases requiring support for SAML. SAML use cases where BIG-IP acts as

#. :guilabel:`SAML Service Provider` : Allows user to configure BIG-IP as Service Provider with optional Single Sign On.
#. :guilabel:`SAML Identity Provider for Applications` : Allows user to configure BIG-IP as SAML Identity Provider for applications.


SAML IDP Connector
------------------

.. toctree::
   :maxdepth: 1
   :hidden:
   :caption: SAML IDP Connector
   :glob:

   saml-idp-connector/*

BIG-IP as SAML Service Provider can work with different vendor specific identity provider. Configuration guide specific to a vendor describes configuration details of such an identity provider.

SAML SaaS Applications
----------------------

.. toctree::
   :maxdepth: 1
   :hidden:
   :caption: SAML SAAS Applications
   :glob:

   saml-saas-applications/*

BIG-IP as SAML Identity Provider can work with different enterprise or cloud applications. Configuration guide specific to an application describes the configuration details of such an application.


Usage
-----

Follow the instructions in on-line help to create configuration for a specific :guilabel:`Federation` use case. If you are configuring

#. :guilabel:`SAML Service Provider` : Select template method for Identity Provider and refer to vendor specific identity provider configuration documenation.
#. :guilabel:`SAML Identity Provider for Applications` : Select a template method for Saas Applications and refer to application specific configuration documentation.

