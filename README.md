# Mystery Box by Razed
**Hello FiveM community!👋**\
We have created a simple mystery box script, which is fully customizable and utilizes qb-target and qb-menu. Go to blip on the map, and interact with the NPC using your 3rd eye to purchase your mystery box. There are 2 options in default, low tier and premium tier (you can add more if you want).

![RazedMysteryBoxThumbnail](https://user-images.githubusercontent.com/91488137/198853685-004f9f9b-c030-45f2-a788-7b560311ebaf.png)

**Features:**

* Customizable
* Custom sounds
* Easy to configure


# Showcase
https://user-images.githubusercontent.com/91488137/198853647-500635d1-a7ff-442f-b37a-e53e19e96bbd.mp4


# How To Install
* Drag and drop `razed-mysterybox`
* In your `server.cfg` add `ensure razed-mysterybox`
* In `images` add the images to `qb-inventory/html/images`


# Config
```
Config = {}

Config.Status = '^5Version 1.0'
Config.TargetDistance = 5

Config.Shop = {
    'a_m_m_business_01'
}

Config.Location = {
    x = 259.32,
    y = -998.41,
    z = 28.26,
    h = 69.03
}

--Blip
Config.BlipName = "Mystery Boxes"
Config.BlipColour = 1
Config.BlipScale = 0.5

--Low Tier Box
Config.LowTierRewards = {
    items = {
    --  {'item_name', chance},
        {'peanutmandms', 1}, 
        {'sandwich', math.random(1,6)},
        {'hersheysbar', math.random(1,6)},
        {'cocacola', math.random(1,6)},
    }
}
Config.LowTierPrice = '500'


--High Tier Box
Config.PremiumTierRewards = {
    items = {
    --  {'item_name', chance},
        {'peanutmandms', math.random(1,6)}, 
        {'phone', math.random(1,6)},
        {'laptop', math.random(1,6)},
        {'diamond_ring', math.random(1,50)},
    }
}
Config.PremiumTierPrice = '2500'
```

# Dependencies
[qb-core](https://github.com/qbcore-framework/qb-core) \
[qb-target](https://github.com/qbcore-framework/qb-target)\
[qb-menu](https://github.com/qbcore-framework/qb-menu)

# Tebex
> https://razed.tebex.io/ - If you want to support me!

# Credits
KLM - Coding.
FiveToes - Helping with blips and spawning npc.
