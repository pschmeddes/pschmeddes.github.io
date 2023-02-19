# darktable

[![darktable ep 124 - Noobies guide to darktable 4.2.0 (pt 1 of 4)](https://img.youtube.com/vi/ttfZoyVNLsk/0.jpg)](https://www.youtube.com/watch?v=ttfZoyVNLsk)

## introduction

## what darktable is

* A RAW Development processor
* An image library management tool

Darktable  is very similar to Adobe Lightroom it is designed as a **raw development engine**. That doesn't mean you can't process jpegs of course you can but it's designed for working with raw files and it is also a
**library management tool** so it allows you to do **color ratings**, **star ratings** add **keywords** all that sort of stuff as well as give you **very advanced search**, **filtering** and **sorting tools** as well.

## what darktable is not

* Multi-layer compositing environment
* A descructive image editor

It is not a multi-layer or compositing program so don't think of it like Photoshop.

## importing images into darktable

### add to library

### copy and import

This option copies images from another location on your filesystem (including mounted storage devices) and then adds the copied images to the darktable library. Using this option, if an existing XMP sidecar file is available for the image, it will *not be read or copied* and a new XMP will be created.

The following additional options are available to control the file and directory naming of the copied files. By default, only the “import job” option is shown – click on the “naming rules” label or the expander icon beside it to show additional options:

* import job

    The name of the import job (populated into the $(JOBCODE) variable).

* override todays’s date

    Enter a valid date/time (in `YYYY-MM-DD[Thh:mm:ss`] format) if you want to override the current date/time used when expanding the variables `$(YEAR)`, `$(MONTH)`, `$(DAY)`, `$(HOUR)`, `$(MINUTE)` and `$(SECONDS)`. Leave the field empty otherwise.

* **base directory naming pattern**

    The base directory part of the naming pattern `$(PICTURES_FOLDER)/RawImages`
* **sub directory naming pattern**

    The sub directory part of the naming pattern `$(EXIF_YEAR)\\$(EXIF_YEAR)-$(EXIF_MONTH)-$(EXIF_DAY)_$(JOBCODE)\\`
* **keep original filename**

    Check this box to keep the original filename instead of using the pattern below when importing.
* **file naming pattern**

    The file name part of the naming pattern: `PSC-$(EXIF_YEAR)$(EXIF_MONTH)$(EXIF_DAY)-$(FILE_NAME).$(FILE_EXTENSION)`. Example `PSC-20230127-5678.CR2`
* **keep this window open**

    Keep the window open after the import is complete, allowing multiple imports but with different naming options.

Most of these options can also be set in preferences > import. See this section for more information about the available variables.

## what are all these xmp files?

> 🚩 TODO

## preferences

> 🚩 TODO

## map view

> 🚩 TODO

## printing from darktable

> 🚩 TODO

## slideshow

> 🚩 TODO

## tethered shooting

> 🚩 TODO

## Darktable workflow

[The ultimate darktable workflow]<https://mel365.com/darktable-workflow/>

### Folder Structure

* 2022
    * 2022_01
    * 2022_02
* 2023
    * 2023_01
    * 2023_02
    * ...
