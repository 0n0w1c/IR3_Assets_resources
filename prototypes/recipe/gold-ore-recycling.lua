data:extend({
    {
        type = "recipe",
        name = "gold-ore-recycling",
        subgroup = "raw-resource",
        category = "recycling",
        hidden = true,
        enabled = true,
        unlock_results = false,
        energy_required = 0.03125,
        crafting_machine_tint = {
            primary = { 0.125, 0.125, 0.125, 0.125 },
            secondary = { 0.125, 0.125, 0.125, 0.125 },
            tertiary = { 0.125, 0.125, 0.125, 0.125 },
            quaternary = { 0.125, 0.125, 0.125, 0.125 },
        },
        icons = {
            {
                icon = "__quality__/graphics/icons/recycling.png",
            },
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/gold-ore.png",
                scale = 0.4,
            },
            {
                icon = "__quality__/graphics/icons/recycling-top.png",
            },
        },
        ingredients = {
            {
                type = "item",
                name = "gold-ore",
                amount = 1,
                ignored_by_stats = 1,
            },
        },
        results = {
            {
                type = "item",
                name = "gold-ore",
                amount = 1,
                probability = 0.25,
                ignored_by_stats = 1,
            },
        },
    }
})
