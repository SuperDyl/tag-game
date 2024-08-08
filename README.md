## Tag game (compatible with Vanilla Tweaks)

Play tag like on Hermitcraft!
Someone starts as the tagger,
with the goal of making another player the tagger instead.
All they have to do is punch another player with the tag.
The tag is a custom name tag named "Tag!"

Other players can recognize taggers
because they will have a red name.

This pack includes configuration options to set a cooldown
before the tagger can tag another player (default is 1 minute)
and to disable announcement messages when players get tagged.

## Vanilla Tweaks Compatible

After Vanilla Tweaks announced they were no longer supporting this pack,
I created this version as a continuation.
The code is entirely mine,
but it is setup to keep the same data and most of the same function names.

If you previously used the Vanilla Tweaks tag datapack,
you can update by simply using this pack instead.
When you first open the world with this datapack,
your settings will be ported over to this datapack
and old unused data will be deleted.

Just like the Vanilla Tweaks version,
this pack also doesn't allow players to tag AFK players,
if a player is marked AFK by the Vanilla Tweaks AFK Display pack.

## Detect AFK Players Compatible

This pack will not allow players to tag AFK players
from the Detect AFK Players datapack.
It should treat these players the same it treats players marked
AFK by the Vanilla Tweaks AFK Display datapack.

## Usage Guide

To add someone to the tagger's team and give them a tag,
an admin can use the command `/execute as <playername> run function tag:become_tagger`

To make someone no longer a tagger (and take away their tag),
an admin can use the command `/execute as <playername> run function tag:become_normal`

An admin can create a new tag at anytime by using the command `function tag:spawn_tag`

As long as a player is a tagger, they will have a red name.
This only works if the player isn't on another team.
Every 5 seconds, the game will give all taggers who aren't on a team back their red name.

The pack keeps track of how many times each player has been tagged.
An admin can display it under player names with the command
`/scoreboard objectives setdisplay below_name tg_timesTagged`
To display times tagged in the multiplayer tab menu,
use the command `/scoreboard objectives setdisplay list tg_timesTagged`

These displays can each be hidden by using the commands
`/scoreboard objectives setdisplay below_name` and
`/scoreboard objectives setdisplay below_name` respectively.

Any player can see the configuration settings by using the command,
`/trigger tg_help`
This will show a menu with the current cooldown (shown in ticks, seconds, and minutes)
and give options to change the cooldown and enable/disable tag announcements.

Only an admin can actually change these settings.

To remove the cooldown, an admin can open the help menu,
choose to change the cooldown, and set it to 0 ticks, seconds, or minutes.

Trying to change the cooldown in the menu will copy a command to the admin's chat.
For example, if the admin clicks "SECONDS", they will have the command
`/function tag:update_cooldown {conversion:20,cooldown:#seconds_here#}`
To turn off the cooldown, the admin could replace `#seconds_here#` with `0`:
`/function tag:update_cooldown {conversion:20,cooldown:0}`
To instead set a cooldown of 30 seconds, they would change it to `30`:
`/function tag:update_cooldown {conversion:20,cooldown:30}`

## Changes from Vanilla Tweaks

One of the main reasons the Vanilla Tweaks listed for
discontinuing this pack was how buggy the code was.
Since I was writing the code from scratch,
I decided to also change some things
I felt were issues with the original pack.

- A tagger taking thorns damage doesn't tag themself
- If there are multiple taggers, they each have their own cooldown
- Tags are only removed from the tagger who tagged another player,
  not from any other taggers
- Only the admin can change settings for the cooldown and tag announcements
- When a tagger is still under cooldown, attempting to tag a player will
  show the tagger how long they have left on their cooldown
- A tagger cannot become a normal player by swapping/removing their team
  - Instead, an admin must call `/execute as <player> run function tag:become_normal`

## Change log

### v1.1.0
* Taggers are now based on tags instead of the `tg_tagged` team
  * This means putting the tagger on a different team leaves them still as a tagger
  * To make a player no longer a tagger, use `/execute as <player> run function tag:become_normal`
  * If a tagger has no team, they are occasionally added back to the `tg_tagged` team (to give them the red name)
* Uninstall command attempts to remove tag game tags from players (for players who are online)
* Added support for the Detect AFK Players datapack
  * Players marked AFK by this datapack also cannot be tagged

## Issues

Please report any issues or change requests on the GitHub repository

## License

This datapack and its files are made available under a GPLv3 license. You can freely download, edit, and share this code, but you must provide the same rights to those you share this datapack with.
