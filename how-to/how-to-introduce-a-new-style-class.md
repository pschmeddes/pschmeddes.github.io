# How to introduce a new style classes

## StyleGuide Team
All styling is centralized in the applicable theme. E.g. the Enterprise style guide theme.
Best practice is that this theme is managed by a dedicated group of OutSystems Front End developers.
We call this group the "StyleGuide team".

## Creating a new style class
If you require some special styling that is not available in the StyleGuide use the following steps to introduce a new style element.
1.	Add a new class to the module’s css and prefix the class with your module prefix e.g. `.sfl-btn-tertiary` for a new element in the Soccer Fields module, screen or block css). **Never use inline style**
2.	When you finished developing the class request a new class from the Style Guide Team.
3.	The Style Guide Team will evaluate the class and decide if and how the new class will be implemented
4.	When the new class is available in the theme, you will be notified the new class name. e.g. `.btn-tertiary`.
5.	Now search in your module for the local class `sfl-btn-tertiary` and replace all instances by the new class `btn-tertiary`.

## Module acronyms
The Style Guide Team maintains and publishes a list of all modules and their acronyms e.g.

| Application	| Module | Acronym |
| ----------- | ------ |  ---    |
| Soccer Fields | SoccerFields | sfl |
| Soccer Fields |	SoccerFieldsBackOffice | sfb |
| Soccer Fields Mobile | SoccerFieldsMobile | sfm |
