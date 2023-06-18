<h1 align="center"> DLC Unlocker Payday 2 </h1>

<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/d/d8/Payday2-logo.png">
</p>

## ⚠️Warning⚠️
**ALWAYS** do separate builds!!!  

Attention, **SOME** weapons and weapon modifications are allowed, but most of them give you CHEATER TAG. If you want to enter a public lobby, make sure you avoid using weapons, weapon modifications, masks and weapons colors that are DLC - otherwise, you will be automatically kicked from the game.


## Installation
You need SuperBLT for the mod to work. [Download it here.](https://superblt.znix.xyz)  
Download the DLC Unlocker [here!](https://github.com/8fn/DLC-Unlocker-PD2/archive/refs/heads/master.zip)  

To find the game folder you can do the following:

If you're on Steam:

![steam_browse_local_files](https://raw.githubusercontent.com/8fn/DLC-Unlocker-PD2/master/docs/img/steam_local_files.gif)

If you're on Epic Games: (Ignore the fact the example shows GTA, you can do the same for Payday 2)

![epic_browse_local_files](https://raw.githubusercontent.com/8fn/DLC-Unlocker-PD2/master/docs/img/epic_local_files.gif)

Then, just extract the zip into the Payday 2 mods folder!

If you don't have a mods folder yet, launch Payday 2 once after you've installed SuperBLT. Doing this will create the mods folder and install the required SuperBLT Hook and dependencies.

This popup will appear. Press 'Yes' and wait until it's done.

![superblt_popup](https://raw.githubusercontent.com/8fn/DLC-Unlocker-PD2/master/docs/img/superblt_popup.png)

Afterwards, you should see the mods folder and you're ready to install the DLC Unlocker.


⚠️If you want to unlock all DLCs, only drag the unlock_all_dlcs folder into the mods folder  
⚠️If you only want to unlock Characters, only drag the unlock_only_characters folder into the mods folder  
⚠️If you only want to unlock Heists, only drag the unlock_only_heists folder into the mods folder


Start the game and enjoy!

## What gives you CHEATER TAG
 - Masks from DLC
 - Weapons from DLC
 - Weapon Modifications from DLC
 - Hosting a Contract Heist from DLC
 - Weapon Colors from DLC
 - Patterns and Materials Mask from DLC
 - Melee Items from DLC

## What doesn't give you CHEATER TAG
 - Outfits from DLC
 - Gloves from DLC
 - Characters from DLC
 - Perk Decks from DLC
 - Equipment from DLC such as Molotov, kingpin injector etc.
 - **SOME** Weapon Modifications from DLC

I recommend doing separate builds, a host build, and a client build without getting CHEATER TAG.

For example, without DLC Unlocker I couldn't do some modifications to my shotgun. But with DLC Unlocker, I can do modifications without getting CHEATER TAG.
 
 Here is an example of modifications that are allowed and don't give you CHEATER TAG!

 ## Shotgun with DLC weapon modifications WITHOUT getting CHEATER TAG

![mod01](https://raw.githubusercontent.com/8fn/DLC-Unlocker-PD2/master/docs/img/mod01.png)

![mod02](https://raw.githubusercontent.com/8fn/DLC-Unlocker-PD2/master/docs/img/mod02.png)

![mod03](https://raw.githubusercontent.com/8fn/DLC-Unlocker-PD2/master/docs/img/mod03.png)

## These weapon modifications gives CHEATER TAG

Single Fire / Auto Fire
![cheatertag01mod](https://raw.githubusercontent.com/8fn/DLC-Unlocker-PD2/master/docs/img/cheatertag01.png)

AK Rubber Grip
![cheatertag02mod](https://raw.githubusercontent.com/8fn/DLC-Unlocker-PD2/master/docs/img/cheatertag02.png)

## Outfit / Gloves / Characters / Perk Deck / Throwable

These don't give you CHEATER TAG

![perkdeck](https://raw.githubusercontent.com/8fn/DLC-Unlocker-PD2/master/docs/img/perkdeck.png)

![throwable](https://raw.githubusercontent.com/8fn/DLC-Unlocker-PD2/master/docs/img/throwable.png)

![gloves](https://raw.githubusercontent.com/8fn/DLC-Unlocker-PD2/master/docs/img/gloves.png)

![outfit](https://raw.githubusercontent.com/8fn/DLC-Unlocker-PD2/master/docs/img/outfit.png)


![characters](https://raw.githubusercontent.com/8fn/DLC-Unlocker-PD2/master/docs/img/characters.png)

## Bypass Cheater Kicker
Bypass by changing the mod's fields in `mod.txt`
```js

{
    "name": "EDIT HERE",
    "description": "EDIT HERE",
    "author": "EDIT HERE",
    "contact": "EDIT HERE",
    "version": "v1.0.0",
    
    "hooks": [
    {
        "hook_id": "lib/managers/dlcmanager",
        "script_path": "dlc-unlocker.lua"
    }
    ]
}
```

## Legendary Skins
Download [here!](https://github.com/8fn/LegendarySkins-PD2)

## Contributing
If you want to contribute and make this repository better, your help is very welcome. Feel free to make pull requests.