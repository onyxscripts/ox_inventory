Config = {}

Config.Onyx = {
    DragToCraft = {
        Enabled = true,
        CraftingTime = 5000, -- Default fallback time if recipe doesn't have one
        Recipes = {
            { 
                Materials = {
                    ['iron'] = 1,
                    ['scrapmetal'] = 1
                },
                Result = 'lockpick', 
                ResultAmount = 1, 
                Chance = 100,
                CraftingTime = 3000,
                CraftingLabel = "Crafting Lockpick...",
                Animation = {
                    dict = "mini@repair",
                    clip = "fixing_a_ped"
                }
            },
            { 
                Materials = {
                    ['scrapmetal'] = 2
                },
                Result = 'iron', 
                ResultAmount = 1, 
                Chance = 50,
                CraftingTime = 6000,
                CraftingLabel = "Melting Scrap Metal...",
                Animation = {
                    dict = "amb@prop_human_parking_meter@male@idle_a",
                    clip = "idle_a"
                }
            }
        }
    },

    DropProps = {
        Enabled = true,
        DefaultModel = `prop_paper_bag_small`,
    },

    Dumpsters = {
        Enabled = true,
        SearchCooldown = 1500, -- Time in ms it takes to search a dumpster
    },

    SearchBar = {
        Enabled = true, -- Displays the item search bar on the top of the inventories
    },

    UI = {
        Blur = true,
        Tilt = true,
    },

    Items = {
        GlobalRename = false, -- If true, all items can be renamed. If false, only items with `rename = true` in data/items.lua can be renamed
    },

    Rarity = { -- DO NOT CHANGE THE RARITY NAMES, ONLY THE COLORS
        Colors = {
            common = '#9ca3af', -- gray
            rare = '#3b82f6', -- blue
            epic = '#a855f7', -- purple
            mythic = '#ef4444', -- red
            legendary = '#eab308' -- yellow
        }
    }
}
