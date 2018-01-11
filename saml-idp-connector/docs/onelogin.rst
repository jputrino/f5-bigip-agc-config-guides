========================================================================
IdP Connector Configuration Guide : onelogin
========================================================================

BIG-IP as SAML SP Configuration
-------------------------------
This document describes the configuration for an external IDP Connector using an IDP Connector template in the Guided Configuration SAML Service Provider workflow. Follow the steps below to configure onelogin:

#. Logon to the BIG-IP user interface and click :menuselection:`Access -> Guided Configuration`.
#. Select the :guilabel:`Federation` category.
#. Select the :guilabel:`SAML Service Provider` to configure BIG-IP as a SAML Service Provider.
#. Review the Required Configuration information and complete the following required steps before you configure the External IDP Connector.

- Provide the :guilabel:`Service Provider` details.
- Provide the :guilabel:`Virtual Server` configuration details.
- After you configure the External IDP connector, configure the Pool Settings and (optional) Endpoint Check and SSO settings.

External IDP Connector Configuration in Guided Configuration
------------------------------------------------------------

.. note::  Saml SP configuration supports only one IDP Connector for a Service Provider.

#. On the External Identity Provider Connector Settings screen, select the :guilabel:`Template`  method.
#. Select the Identity Provider from the provided set. You can search for onelogin in the Search bar. If a template for your application is not available, you can use the options :guilabel:`Metadata` or :guilabel:`Custom`, and configure the Identity Providers accordingly.

Select onelogin and click :guilabel:`Add`. Specify a name for the connector.

IDP Connector Specific Properties
---------------------------------

To configure onelogin provide following inputs:
	- :guilabel:`Connector ID` : Provide the connector id from the OneLogin SSO URL. For example, if the SSO URL is https://company.onelogin.com/trust/saml2/http-redirect/sso/123456, then 123456 is the connector ID.
	- :guilabel:`Single Sign-on Service Binding` : Select the SSO binding
	- :guilabel:`Application Connector Name` : Provide the connector name from the OneLogin SSO URL. For example, if the SSO URL is https://company.onelogin.com/trust/saml2/http-redirect/sso/123456, then company is the application connector name.

Advanced Connector Settings
---------------------------

If the basic settings do not provide the information you need to configure, show Advanced Settings by clicking :guilabel:`Show Advanced Settings`.

Endpoint Settings
`````````````````

- Select :guilabel:`POST/Redirect`  as your Single Sign-on Service Binding.

Assertion Settings
``````````````````

- Specify whether the Identity Location is :guilabel:`Subject` or :guilabel:`Attribute`.

Security Settings
`````````````````

- Select :guilabel:`Yes` to sign Authentication requests, and select the appropriate signing algorithm.

Certificate Settings
````````````````````

- Select :guilabel:`Yes`  if you want to detach the signature when using the redirect binding.

- Click :guilabel:`Save & Next`. Complete the subsequent steps.

Deploy the Configuration
------------------------

#. Deploy the configuration from the :guilabel:`Summary` screen.
#. To retrieve the metadata for this configuration, navigate to :menuselection:`Access --> Federation --> SAML Service Provider --> Local SP Services`.
#. Select the SAML SP object created by your workflow, and click :guilabel:`Export Metadata`.
#. Use the SAML metadata file to configure the Service Provider configuraton in the external Identity Provider Administration console.

Setup onelogin as SAML Identity Provider
-----------------------------------------------------------------

Refer to onelogin documentation to set it up as SAML Identity Provider.

Test the configuration
----------------------

#. To test the configuration, click on the link :guilabel:`Click to test configuration` on the Summary page.
#. Provide test user credentials, and verify that the access to the backend application succeeds.
