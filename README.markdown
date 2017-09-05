Textmate Bundle for Cucumber
============================

This is the official TextMate bundle for Cucumber. 

Installation
------------

    mkdir -p ~/Library/Application\ Support/TextMate/Bundles/
    cd ~/Library/Application\ Support/TextMate/Bundles
    git clone git://github.com/cucumber/cucumber-tmbundle.git Cucumber.tmbundle
    osascript -e 'tell app "TextMate" to reload bundles'

To install the color themes for the syntax highlighting:

    open Cucumber.tmbundle/color_themes/Cobalt.tmTheme
    open Cucumber.tmbundle/color_themes/Sunburst.tmTheme
    open Cucumber.tmbundle/color_themes/Vibrant\ Ink.tmTheme
    open Cucumber.tmbundle/color_themes/Bespin.tmTheme

Adaptations of other themes is welcome!

If you are using [RVM](http://rvm.io), you can configure TextMate to use your RVM settings (from your `.rvmrc` file) by following [these instructions](http://rvm.io/integration/textmate/).

Features
--------

* Color highlighting for plain text Features (supports all the languages that Cucumber does)
* Snippets for plain text Features and Step files
* Auto-completion of steps in features (<kbd>⌥⎋</kbd>)
* Predefined completions (<kbd>⎋</kbd>) for common feature keywords
* Spellcheck is on by default for the plain text Features
* Switch between plain text Feature and corresponding Step matcher file <kbd>⇧^↓</kbd>
* Go to any file of the opposite kind (Step ↔ Feature) <kbd>⇧^↑</kbd>
* Run a Feature with HTML output
* Run a single Scenario with HTML output


Developing, Hacking, etc.
=======================

There is now a [Developers ReadMe](http://github.com/cucumber/cucumber-tmbundle/blob/master/DEV_README.markdown). Please read this if you are hacking this bundle.


Credits
=======

The Cucumber TextMate Bundle is currently maintained by Andrew Premdas.

* **Ben Mabey** - Author/Main contributor (stuff)
* **Dr. Nic** - Main contributor (Snippet and grammar updates, updated 'Run Focused Scenario' command, Autocomplete Step command, Scenario Folding, Choose Alternate File, and more stuff)
* **John Thornton** - Co-Author of original RSpec Story Runner Bundle
* **Andre Foeken** - "Original color syntax highlighting":http://movesonrails.com/articles/2007/11/06/rspec-plain-text-stories
* **Tim Harper** - Update Bundle Command, file detection bug fixes, go to step definition fixes, step grammar enhancements.
* **Aslak Hellesøy** - Rake task improvement, snippet updates, Cucumber! 
* **Pedro Visintin** - Syntax fix
* **Joseph Wilk** - Syntax extensions for 'Scenario Outline'
* **Sam Livingston-Gray** - Align Table Cells command
* **Grant Hollingworth** - Improved step grammar - regexps syntax highlighting, more precise string and comment scopes. Ignore includes for step completion.
* **Ben Wiseley** - Fix for FileUtils bug
* **Ashley Moran** - Improved Align Table Cells command
* **Jari Bakken** - Syntax Highlighting improvements, include support for `@tags`.
* **Chris Hoffman** - Improved Step Definition grammar to handle string interpolation when calling other steps.

TODO
====

* Rethink Alternative-File Command to avoid encouraging "feature coupled steps.":http://wiki.github.com/aslakhellesoy/cucumber/feature-coupled-steps-antipattern
* Navigation Commands
* From a step definition be able to pull up a list of features using that step and to jump to them.
* Automatically create template step file with pending steps based on the steps used in the feature.
* Use Cucumber's built-in functionality to do this and clean out the story bundle's way.
* Snippets for tables.
* Multi-language support for the snippets?

