======================================================================================
SaaS Application Configuration Guide : CatalystOne
======================================================================================

BIG-IP as SAML IdP Configuration
--------------------------------
This document describes the configuration for a SAML Identity Provider for SaaS Application workflow using a SaaS Application template. Follow the steps below to configure CatalystOne:

#. Logon to the BIG-IP user interface and click :menuselection:`Access -> Guided Configuration`
#. Select the :guilabel:`Federation` category.
#. Select :guilabel:`SAML Identity Provider for SaaS Application` to configure BIG-IP as a SAML Identity Provider.
#. Review the Required Configuration information, and complete the following  required step before you configure the SaaS Application.

- Provide the :guilabel:`Identity Provider` details.
- Provide the :guilabel:`Virtual Server` configuration details.
- Configure the :guilabel:`Authentication` method to use for the SAML Identity Provider.
- After you confgure the SaaS Application Configuration, configure (optional) Endpoint Checks and Customization settings.

CatalystOne Configuration in Guided Configuration Workflow
---------------------------------------------------------------------------------------------------------------------------

The SaaS Application screen displays a list of applications from which you can select to configure SAML Service Provider applications. Select a specific application and click :guilabel:`Add`.

For example, to configure CatalystOne, select CatalystOne and click :guilabel:`Add`.

Common Application Properties
-----------------------------

#. Specify the application name. The system uses the name internally, to identify configuration details for the application and the SAML service provider for it.
#. Select whether the application supports IDP Initiated requests. Select the IdP Initiated option to display the application resource on the Webtop.
#. Specify or modify the caption. The Webtop uses the caption to display the application resource.
#. Specify an optional description for the application.

Application Specific Properties
-------------------------------

CatalystOne does not require any user input.

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
#. Select the SAML SSO object created for for CatalystOne, and click :guilabel:`Export Metadata`.
#. Use the exported IdP SAML Metadata to configure the IdP Provider configuration in the CatalystOne service.

Setup CatalystOne as SAML Service Provider
------------------------------------------------------------------------------------------------------------

Refer to CatalystOne documentation to set it up as SAML Service Provider.

Test the Configuration
----------------------

#. To test the configuration, click on the link :guilabel:`Click to test configuration` on the Summary page.
#. A succesful logon should display a Webtop that includes the IdP Initiated Applications.

