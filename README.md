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
* In your `qb-core/shared/items.lua` add 
```
['lowmysterybox'] 			     = {['name'] = 'lowmysterybox', 				['label'] = 'Low Tier Mystery Box',     ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'lowmysterybox.png', 		['unique'] = false,     ['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'It\' an alright mystery box which includes some random but useful items, perfect if you\'re broke.'},
['premiummysterybox'] 			 = {['name'] = 'premiummysterybox', 			['label'] = 'Premium Box', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'highmysterybox.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'An amazing mystery box which includes some top-notch items, perfect for your \'RICH\' lifestyle.'},
```


# Config
```
Config = {}
local model = 'a_m_m_business_01'

Config.Status = '^5Version 1.0'
Config.TargetDistance = 1

Config.BlipLocation = {
    vector3(195.66, -1009.5, 29.31),
}

--Blip
Config.Blip = {
blipName = "Mystery Boxes",
blipType = 465,
blipColor = 5,
blipScale = 0.9,
}

Config.Location = {
    [1] = {
        coords = vector4(195.66, -1009.5, 29.31, 160.0),
        model = model,
    },

    -- [2] = {
    --     coords = vector4(x, y, z, w),
    --     model = model,
    -- },
}

--Low Tier Box
Config.LowTierRewards = {
    items = {
    --  {'item_name', chance},
        {'snikkel_candy', 1}, 
        {'sandwich', math.random(1,6)},
        {'twerks_candy', math.random(1,6)},
        {'kurkakola', math.random(1,6)},
    }
}
Config.LowTierPrice = '500'


--High Tier Box
Config.PremiumTierRewards = {
    items = {
    --  {'item_name', chance},
        {'snikkel_candy', math.random(1,6)}, 
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
