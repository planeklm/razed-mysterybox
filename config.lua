Config = {}

Config.Status = '^5Version 1.0'
Config.TargetDistance = 5

Config.Shop = {
    'a_m_m_business_01'
}


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