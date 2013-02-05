computercraft
=============

LUA Scripts for ComputerCraft (Minecraft mod)

Scripts
-------

### bootstrap.lua

On the server I play on, pastebin is already present as a program.  This script
is pulled from pastebin and then loads all scripts in this repo.

This script is kept up-to-date at pastebin at http://pastebin.com/55tqszpw

### boot2.lua

Pulls all programs from this repo and a few other nices one.  Second level of bootstrapping
is because it's easier for me to modify files on github than on pastebin.

** Pastebin Programs **

* quarry: More efficient excavate from Adam Smith. http://pastebin.com/PAPDddcb

### github.lua

Downloads and saves a script from Github

    USAGE: github get <GITHUB-PATH> <PROGRAM-NAME>
    EXAMPLE: github get seriallos/computercraft/master/redwood.lua redwood

Cross-posted on pastebin at 

### gist.lua

Load Gists as a program.

    USAGE: gist get <GIST-ID> <PROGRAM-NAME>
    EXAMPLE: gist get 4700006 stairs

### redwood.lua

Cuts "up" a redwood, one of the 2x2 super tall trees from BiomesXL

### stairs.lua

Digs stairs down into the ground with variable step height and depth to dig.
Also places torches!

    USAGE: stairs <DEPTH> <STAIR-HEIGHT>
