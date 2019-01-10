# Sentences and Juice: Cruftstripper for servers with only a JVM installed

This project repackages the [cruftstripper](raw.githubusercontent.com/petewarden/dstk/c3ff139696b6cb5f1a654e8bc31d00facb719f6c/cruftstripper.rb) Ruby script from the [Data Science Toolkit](http://www.datasciencetoolkit.org/) into a JRuby Jar file, which can then be used on servers which only have a JVM installed.

The [Warbler gem](https://github.com/jruby/warbler) is used to compile the Sentences Jar file: 

```gem install warbler```

Yeah, yeah, I probably need a Gemfile so I can use bundle to keep track of things, and a Rakefile to call Warble.... I should make this project follow standard Ruby conventions.... though... really, I should figure out how to get Maven to build this... bah, just get it done.

## COMPILING

```
warble compiled runnable jar sentences.rb
```

## JUICE

A simple Bash script, [juice.sh](./juice.sh) is provided to wrap the Sentences Jar and to also use the GNU Strings command to extract sensible text information from any binary file.

## Juice in use

Here's a [DSpace media filter plugin](https://github.com/UCLALibrary/DSpace/blob/ucla-vsim-6_x/dspace-api/src/main/java/org/dspace/app/mediafilter/WildcardFilter.java) that uses the juice command to create a full-text index for *any* binary file.

## Yep, this could all be better

Pull requests accepted, this is a work in progress, albeit a pretty useful one.

---
[![GPL 3.0 License](https://img.shields.io/github/license/hardyoyo/sentences.svg)](./LICENSE)
---
