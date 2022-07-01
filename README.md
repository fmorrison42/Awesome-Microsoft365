# Awesome-Microsoft365



[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome) 

Microsoft 365 is a suite of apps that help you stay connected and get things done.   It include all the common MS Office apps like Word and Excel, plus the online tools like SharePoint, Teams, Skype (if that's really still a thing), plus Identity Management through Azure Active Directory!


This initially started out as a basic text file in my OneNote to reference all the things I would need for any given situation or client ticket, but it keeps growing and I figured I should share it with anyone else who works with 365 as much as I do.  I hope it comes in handy! 

--------------------



## Table of contents

  - [Insanely Useful 365 Direct Links](#insanely-useful-365-direct-links)
  - [Admin Center Direct Links](#admin-center-direct-links)
  - [365 Add-ons](#365-add-ons)
  - [Tools](#tools)  
  - [Integrations with Microsoft 365](#integrations-with-microsoft-365)


--------------------

### Insanely Useful 365 Direct Links:

- [MFA Setup](https://aka.ms/MFAsetup) - Multi-Factor Authentication Setup - User Link

- [365 My Account (edit User Info)](https://myaccount.microsoft.com/) - Direct link to edit your personal contact and security information for 365 without having to navigate through 365. 

- [365 Security Info](https://mysignins.microsoft.com/security-info) - A secondary method for editing your personal 365 security features, especially for MFA. 

- [Password Reset Function](https://passwordreset.microsoftonline.com/) - Keep in mind this is only useful if the tenent admins have enabled SSPR.

--------------------

### Admin Center Direct Links:

**[`^        back to top        ^`](#)**

- [All Office 365 Admin Centers](https://admin.microsoft.com/AdminPortal/Home#/alladmincenters)

- [Azure Active Directory](https://aad.portal.azure.com)

- [Azure Portal](https://portal.azure.com)

- [Cloud App Security](https://portal.cloudappsecurity.com/)

- [Entra Admin Center](https://entra.microsoft.com/) - Fancy new Identity & Permissions Management Portal

- [Endpoint / Device Management (Intune)](https://devicemanagement.microsoft.com/)

- [Exchange Admin Center](https://outlook.office365.com/ecp/?rfr=Admin_o365)

- [Microsoft Purview / Microsoft 365 Compliance Center](https://compliance.microsoft.com/)

- [Microsoft 365 Security Center](https://security.microsoft.com)

- [Office 365 Admin Center](https://admin.microsoft.com)

- [Office 365 Auditing](https://protection.office.com/unifiedauditlog)

- [SharePoint Admin Center](https://admin.microsoft.com/sharepoint?page=home&modern=true)

- [Teams Admin Center](https://admin.teams.microsoft.com/)


--------------------
### 365 Add-ons

**[`^        back to top        ^`](#)**

- [Microsoft 365 Dev Program](https://developer.microsoft.com/en-us/microsoft-365/dev-program) - Get an instant Microsoft 365 E5 sandbox preconfigured with sample data, including Teams Developer Portal, and start developing on the Microsoft 365 platform.  It also comes with a TON of extra free goodies to help with developing apps and skills in 365.  It's been a huge help in studying for the different 365 exams. 



--------------------
### Tools

**[`^        back to top        ^`](#)**

#### MS Remote Connectivity Analyzer

- [Microsoft Remote Connectivity Analyzer](https://testconnectivity.microsoft.com/tests/o365) - This is the mother of all tools (more like the host site of every network tool and test you could possibly need to manage your tenant)! It has everything from Exchange Online Custom Domain DNS Connectivity Tests to Outbound SMTP Email tests, to Exchange ActiveSync.  And that's just the email tests.  There are 4 other sections of tests AND you can even download the SARA client if you need to!! 

#### 365 Management Tools

- [Microsoft Office 365 Deployment Tool](https://go.microsoft.com/fwlink/p/?LinkID=626065) - (download link) The Office Deployment Tool (ODT) is a command-line tool that you can use to download and deploy Microsoft 365 Apps to your client computers. The ODT gives you more control over an Office installation: you can define which products and languages are installed, how those products should be updated, and whether or not to display the install experience to your users. [Documentation & Reference (MS Docs)](https://docs.microsoft.com/en-us/deployoffice/overview-office-deployment-tool) `MSFT 1st Party` `CLI`

- [Microsoft Office 365 Customization Tool](https://config.office.com/deploymentsettings) - The Office Customization Tool creates the configuration files that are used to deploy Office in large organizations. These configuration files give you more control over an Office installation: you can define which applications and languages are installed, how those applications should be updated, and application preferences. `MSFT 1st Party` `web based`

- [Microsoft Support and Recovery Assistant (SARA)](https://support.microsoft.com/en-us/office/about-the-microsoft-support-and-recovery-assistant-e90bb691-c2a7-4697-a94f-88836856c72f) - The Microsoft Support and Recovery Assistant works by running tests to figure out what's wrong and offers the best solution for the identified problem. It can currently fix Office, Microsoft 365, or Outlook problems. If the Support and Recovery Assistant can't fix a problem for you, it will suggest next steps and help you get in touch with Microsoft support.    __A.K.A. - The greatest thing since sliced bread!!__ `MSFT 1st Party` `GUI`

- [365 Service Health Status](https://status.office365.com/) - This site is updated when service issues are preventing tenant administrators from accessing Service health in the Microsoft 365 admin center. `MSFT 1st Party` `web-based`

- [Readiness Toolkit for Office add-ins and VBA](https://www.microsoft.com/en-us/download/details.aspx?id=55983) - The Readiness Toolkit for Office add-ins and VBA helps you identify compatibility issues with your Microsoft Visual Basic for Applications (VBA) macros and your installed add-ins. Use this tool to inspect VBA macro code and get readiness information for installed Office add-ins.  `MSFT 1st Party` `GUI`

- [AzCopy](https://docs.microsoft.com/en-us/azure/storage/common/storage-use-azcopy-v10) - AzCopy is a command-line utility that you can use to copy blobs or files to or from a storage account. `MSFT 1st Party` `CLI`

- [Power BI Desktop Download](https://www.microsoft.com/en-us/download/details.aspx?id=58494) `MSFT 1st Party` `GUI`

 ___Domain / User Migration Tools___

- [ForensIT User & Domain Migration Tool](https://www.forensit.com/domain-migration.html) - Not officially endorsed by Microsoft, but highly recommended within the Tech Community and various other users.  I've used it on several recent Azure AD migrations when I needed to migrate to an AAD-only profile on the same PC to ensure the user's data and settings were retained. `3rd Party` `GUI`

- [User State Migration Tool](https://docs.microsoft.com/en-us/windows/deployment/usmt/usmt-overview) - You can use User State Migration Tool (USMT) 10.0 to streamline and simplify user state migration during large deployments of Windows operating systems. USMT captures user accounts, user files, operating system settings, and application settings, and then migrates them to a new Windows installation. `MSFT 1st Party` `CLI`

- [USMTGUI - User State Migration Tool w/ GUI](https://ehlertech.com/azure/) - USMTGUI is what it states. A GUI to simplify the usage of USMT from Microsoft.... `3rd Party` `GUI`

- [Migrate Google Workspace/G-Suite to MS 365](https://docs.microsoft.com/en-us/exchange/mailbox-migration/migrating-imap-mailboxes/migrate-g-suite-mailboxes) `MSFT 1st Party` `web-based`

 ___PowerShell Tools___
 
- [Azure AD Connect configuration documenter](https://github.com/Microsoft/AADConnectConfigDocumenter) - AAD Connect configuration documenter is a tool to generate documentation of an Azure AD Connect installation. Currently, the documentation is only limited to the Azure AD Connect sync configuration. `POSH`

- [Exchange Online Module](https://www.powershellgallery.com/packages/ExchangeOnlineManagement/2.0.5) - Here's where you can download the latest Exchange Online PS module for connecting from any device to manage your Exchange 365 environment. `POSH`



--------------------

### Integrations with Microsoft 365
(this one is a bit slim but it'll grow quickly as I find all the links I've got spread across my browser)

**[`^        back to top        ^`](#)**

- [Barracuda Email Security](https://www.barracuda.com/programs/office365) - Yes I know, it's a bit redundant. However, I've been using it for a few years and I think the 'cuda is just the Bees' Knees!
- [Ubiquiti UID / Office 365](https://ui.com/uid)
