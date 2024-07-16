# Phoenix Tag
An attempt to bring the long-time "dead" SkullTag features to the most modern versions of GZDoom, and also making them compatible with mods. I´m currently trying to re-add the monsters and weapons, which will be followed by inventory items such as runes and the map rework itself.

# Notes about mod compatibility
## Mods without compatibility patches
`ptag_replaceweapons false` will disable Skulltag weapons entirely, allowing only their vanilla equivalents or replaced vanilla weapons to spawn. *This includes the actual weapon spawners themselves, meant specifically for these weapons, i.e. Minigun spawners will instead spawn the Chaingun.*

## Mods with compatibility patches (i.e. Supercharge and Skulltag-based mods)
Simply add the provided compatibility patches within the `compatibility-patches` folder in this order:
```phoenix-tag
(skulltag patch, if it's a skulltag mod)
(your mod here)
(compatibility patch)