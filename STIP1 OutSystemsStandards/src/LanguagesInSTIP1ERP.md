# Languages in STIP1 ERP

In STIP1 ERP, we have two lists of available languages:

* UI language

* Translation language

There is no global list of all languages in the world. Read on to
discover why this is.

## UI language

The UI language is the language in which the user interface of STIP1 ERP
backoffice is presented to the user. The user may select the requested
language from the dropdown list in the menu bar.

The list of languages that is presented here comes from static entity
UILanguage in module GlobelTheme_Th. Once a language is added or
activated for this list, a Multilingual Locale for that language must be
added to all STIP1 ERP modules and the translation in there must be
maintained along with the other Multilingual locales. This cuases all
static information on the UI to be translated into the selected
language.

English is STIP1 ERP's native language, and it is a guideline that the
Dutch translations will be provided by the development team. For all
addidional lUI languages a process and resources must be put in place to
maintain those languages. It is expected that this will be limited to
just a few additional languages.

A user's preferred language, which is or will be found in the user's
profile, is the UI language.

## Translation language

The translation language is the language to be used in conversations
with (external) parties. The set of supported translation languages is
likely to be a superset of the UI languages.

The list of translation languages is stored in static entity
TranslationLanguage in module TRA_Trannslation_CDM.

Within STIP1 ERP the translation language is used for 'data
translations\' (see [How to add translatable attributes to an
entity](https://synobsys2013-my.sharepoint.com/wiki/spaces/STIP1/pages/62128447/How+to+add+translatable+attributes+to+an+entity))
on attributes that are going to be exposed to external parties. Please
note that this list will not contain all languages in the world, but
only the subset that Global Automotive is prepared to use in these
communications, as each supported language will require a significant
amount of maintenance work.

Adding a language to the TranslationLanguage will cause this language to
show up in the translations list on the common TranslationBlock
(<https://globalsharedservices.atlassian.net/wiki/spaces/STIP1/pages/62128447/How+to+add+translatable+attributes+to+an+entity#Using-the-TranslationBlock-common-web-block>).
Note that the actual translation for each attribute value must be
entered manually to become effective. We expect that additional
functionality will be requested to maintain data translations in bulk
when this becomes an issue.

The preferred language of an external party (such as a customer or a
supplier) is or will be stored in his profile and will be a
TranslationLanguage.

The list of TranslationLanguages will also be shared with the Output
Management System, where external documents are being constructed.
Document templates must be available or all supported
TranslationLaguages.
