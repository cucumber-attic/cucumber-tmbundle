Textmate Bundle for Cucumber
============================

This is the official TextMate bundle for Cucumber. Installation:

    mkdir -p ~/Library/Application\ Support/TextMate/Bundles/
    cd ~/Library/Application\ Support/TextMate/Bundles
    git clone git://github.com/cucumber/cucumber-tmbundle.git Cucumber.tmbundle
    osascript -e 'tell app "TextMate" to reload bundles'

To install the color themes for the syntax highlighting, install them as follows:

    open Cucumber.tmbundle/color_themes/Cobalt.tmTheme
    open Cucumber.tmbundle/color_themes/Sunburst.tmTheme
    open Cucumber.tmbundle/color_themes/Vibrant\ Ink.tmTheme

Adaptations of other themes is welcome!

If you are using [RVM](http://beginrescueend.com/) you can set up TextMate to use your RVM settings (read your `.rvmrc` file) by following [these instructions](http://beginrescueend.com/integration/textmate/). 

Features
--------

* Color highlighting for plain text features (supports all the languages that Cucumber does)
* Snippets for plain text features and step files.
* Auto-completion of steps in features (Alt+Escape)
* Predefined completions (escape key) for common feature keywords.
* Spellchecking turned on by default for the plain text features.
* Switch between plain text feature and corresponding step matcher file. Shft+Ctrl+Down
* Choose to go any file of opposite kind (step <-> feature) Shft+Ctrl+Up
* Run a feature with HTML output.
* Run a single scenario with HTML output.


Developing Hacking etc.
=======================

There is now a [developers readme](http://github.com/cucumber/cucumber-tmbundle/blob/master/DEV_README.markdown), please read this if you are hacking this bundle.


Credits
=======

The Cucumber TM Bundle is currently maintained by Andrew Premdas.

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
* **Jari Bakken** - Syntax Highlighting improvements, include support for @tags.
* **Chris Hoffman** - Improved Step Definition grammar to handle string interpolation when calling other steps.

TODO
====

* Rethink Alternative-File Command to avoid encouraging "feature coupled steps.":http://wiki.github.com/aslakhellesoy/cucumber/feature-coupled-steps-antipattern
* Navigation Commands
* From a step definition be able to pull up a list of features using that step and to jump to them.
* Automatically create template step file with pending steps based on the steps used in the feature.
* Use Cucumber's built in functionality to do this and clean out the story bundle's way.
* Snippets for tables.
* Multi-language support for the snippets?

