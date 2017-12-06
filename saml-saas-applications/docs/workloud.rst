======================================================================================
SaaS Application Configuration Guide : workloud
======================================================================================

BIG-IP as SAML IdP Configuration
--------------------------------
This document describes the configuration for a SAML Identity Provider for SaaS Application workflow using a SaaS Application template. Follow the steps below to configure workloud:

#. Logon to the BIG-IP user interface and click :menuselection:`Access -> Guided Configuration`
#. Select the :guilabel:`Federation` category.
#. Select :guilabel:`SAML Identity Provider for SaaS Application` to configure BIG-IP as a SAML Identity Provider.
#. Review the Required Configuration information, and complete the following  required step before you configure the SaaS Application.

- Provide the :guilabel:`Identity Provider` details.
- Provide the :guilabel:`Virtual Server` configuration details.
- Configure the :guilabel:`Authentication` method to use for the SAML Identity Provider.
- After you confgure the SaaS Application Configuration, configure (optional) Endpoint Checks and Customization settings.

workloud Configuration in Guided Configuration Workflow
---------------------------------------------------------------------------------------------------------------------------

The SaaS Application screen displays a list of applications from which you can select to configure SAML Service Provider applications. Select a specific application and click :guilabel:`Add`.

For example, to configure workloud, select workloud and click :guilabel:`Add`.

Common Application Properties
-----------------------------

#. Specify the application name. The system uses the name internally, to identify configuration details for the application and the SAML service provider for it.
#. Select whether the application supports IDP Initiated requests. Select the IdP Initiated option to display the application resource on the Webtop.
#. Specify or modify the caption. The Webtop uses the caption to display the application resource.
#. Specify an optional description for the application.

Application Specific Properties
-------------------------------

To configure workloud provide following inputs:
	- :guilabel:`Oraganization ID` : Specify organization ID. SAML attribute Organization_ID in the assertion contains the value of Organization ID.
	- :guilabel:`Customer ID` : Specify customer ID. Entity ID and ACS URIs contain the value of Customer ID.
	- :guilabel:`Is workloud deployed in sandbox environment?` : Select your applicable deployment environment.

Additional SAML Attributes and ACS Properties
---------------------------------------------

#. Configure any additional attribute values to include in the SAML assertion to SaaS Application. Each SAML Attribute has an attribute name and attribute value. The session variable values can specify attribute values. Configure an AD or LDAP query to include specific attributes in session variables.
#. Configure an additional Assertion Consumer Service URI if the application requires such a URI.

Security Properties
-------------------
#. Specify whether to sign the assertion and response, and specify the signing algorithm.
#. Specify whether to require a signed Authentication Request. If required, select a signing certificate.
#. Specify whether to encrypt assertions. If required, speciofy the encryption algorithm and select the encryption certificate.
#. Complete the workflow configuration by configuring optional endpoint checks and customization.

Deploy the Configuration
------------------------

#. Deploy the configuration from the :guilabel:`Summary` screen.
#. To retrieve the metadata for this configuration, navigate to :menuselection:`Access -> Federation -> Saml Identity Provider -> Local Idp Services`.
#. Select the SAML SSO object created for for workloud, and click :guilabel:`Export Metadata`.
#. Use the exported IdP SAML Metadata to configure the IdP Provider configuration in the workloud service.

Setup workloud as SAML Service Provider
------------------------------------------------------------------------------------------------------------

Refer to workloud documentation to set it up as SAML Service Provider.

Test the Configuration
----------------------

#. To test the configuration, click on the link :guilabel:`Click to test configuration` on the Summary page.
#. A succesful logon should display a Webtop that includes the IdP Initiated Applications.

