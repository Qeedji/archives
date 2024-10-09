# Email and supported authentication

#### **SUPPORTED AUTHENTICATIONS** `2016-07-28` (last update)
- Email sending is supported in Gekkota. This is the list of supported authentications:
	- GSSAPI
	- CRAM-MD5
	- NTLM
	- MSN
	- PLAIN (1)
	- LOGIN (1)
- (1) These authentications are not active by default with a Google account. To activate them, go in Google account parameters menu, and activate the option "Allowing less secure apps to access your account"
- The authentications below (used by example by Google) are not supported:
	- XOAUTH2
	- PLAIN-CLIENTTOKEN
	- OAUTHBEARER
	- XOAUTH
#### **NOTE FOR MS-EXCHANGE 365 ACCOUNT**
- Given the SSL negociation is done afterwards, the URL has to follow the scheme ```smtp://``` (and not ```smtps://```)
	ex: smtp://smtp.office365.com:587
#### **COMPATIBILITY**
- Gekkota 3.12.33
- Gekkota 4.10.10 beta147
