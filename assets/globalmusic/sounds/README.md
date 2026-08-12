# Custom sound files needed here

Every `globalmusic:*` sound event is defined in `../sounds.json`. Most of them
alias vanilla files that already ship inside Minecraft's own resources (e.g.
`globalmusic:sweden` -> `minecraft:music/game/sweden`), so no audio needs to
live in this pack for those.

Ten C418 "Minecraft - Volume Alpha" tracks were never bundled by Mojang as
game assets in any version (they only ever existed on the standalone
soundtrack release), so there is no vanilla file to alias. Those still need
their `.ogg` dropped in this folder, named to match the event in
`sounds.json`:

- `chris.ogg`
- `death.ogg`
- `door.ogg`
- `droopy_likes_ricochet.ogg`
- `droopy_likes_your_face.ogg`
- `excuse.ogg`
- `flake.ogg`
- `intro.ogg`
- `ki.ogg`
- `kyoto.ogg`

That's it: 10 files instead of the full 46-track set we used to ship.
