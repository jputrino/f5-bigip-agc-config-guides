======================================================================================
SaaS Application Configuration Guide : Kyriba
======================================================================================

BIG-IP as SAML IdP Configuration
--------------------------------
This document describes the configuration for a SAML Identity Provider for SaaS Application workflow using a SaaS Application template. Follow the steps below to configure Kyriba:

#. Logon to the BIG-IP user interface and click :menuselection:`Access -> Guided Configuration`
#. Select the :guilabel:`Federation` category.
#. Select :guilabel:`SAML Identity Provider for SaaS Application` to configure BIG-IP as a SAML Identity Provider.
#. Review the Required Configuration information, and complete the following  required step before you configure the SaaS Application.

- Provide the :guilabel:`Identity Provider` details.
- Provide the :guilabel:`Virtual Server` configuration details.
- Configure the :guilabel:`Authentication` method to use for the SAML Identity Provider.
- After you confgure the SaaS Application Configuration, configure (optional) Endpoint Checks and Customization settings.

Kyriba Configuration in Guided Configuration Workflow
---------------------------------------------------------------------------------------------------------------------------

The SaaS Application screen displays a list of applications from which you can select to configure SAML Service Provider applications. Select a specific application and click :guilabel:`Add`.

For example, to configure Kyriba, select Kyriba and click :guilabel:`Add`.

Common Application Properties
-----------------------------

#. Specify the application name. The system uses the name internally, to identify configuration details for the application and the SAML service provider for it.
#. Select whether the application supports IDP Initiated requests. Select the IdP Initiated option to display the application resource on the Webtop.
#. Specify or modify the caption. The Webtop uses the caption to display the application resource.
#. Specify an optional description for the application.

Application Specific Properties
-------------------------------

To configure Kyriba provide following inputs:
	- :guilabel:`Tenant Name` : Provide the Tenant Name. For eg if the ACS URL is https://company.treasury-factory.com/sso_login?tenantId=tenant the Tenant Name is tenant.
	- :guilabel:`Sub Domain` : Provide the sub domain. For e.g. if the Entity ID URL is https://company.treasury-factory.com, the sub domain is company

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
#. Select the SAML SSO object created for for Kyriba, and click :guilabel:`Export Metadata`.
#. Use the exported IdP SAML Metadata to configure the IdP Provider configuration in the Kyriba service.

Setup Kyriba as SAML Service Provider
------------------------------------------------------------------------------------------------------------

Refer to Kyriba documentation to set it up SAML Service Provider.

Test the Configuration
----------------------

#. To test the configuration, click on the link :guilabel:`Click to test configuration` on the Summary page.
#. A succesful logon should display a Webtop that includes the IdP Initiated Applications.

