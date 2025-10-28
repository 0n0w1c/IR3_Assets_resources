require("__base__/prototypes/factoriopedia-util")

local resource_autoplace = require('resource-autoplace');

data.raw["planet"]["nauvis"].map_gen_settings.autoplace_controls["gold-ore"] = {}
data.raw["planet"]["nauvis"].map_gen_settings.autoplace_settings.entity.settings["gold-ore"] = {}

resource_autoplace.initialize_patch_set("gold-ore", true)

data:extend({
    {
        type = "autoplace-control",
        category = "resource",
        name = "gold-ore",
        richness = true,
        order = "a-h"
    }
})

data:extend({
    {
        type = "optimized-particle",
        name = "gold-ore-mining-particle",
        life_time = 300,
        movement_modifier_when_on_ground = 0,
        pictures = {
            sheet = {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/particles/mining-particles.png",
                frame_count = 32,
                height = 32,
                line_length = 32,
                scale = 0.4,
                variation_count = 1,
                width = 32,
                y = 64
            }
        },
        render_layer = "air-object",
        render_layer_when_on_ground = "lower-object-above-shadow",
        shadows = {
            sheet = {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/particles/mining-particles.png",
                frame_count = 32,
                height = 32,
                line_length = 32,
                scale = 0.4,
                shift = { 0.046875, 0.015625 },
                tint = { r = 0, g = 0, b = 0, a = 1 },
                variation_count = 1,
                width = 32,
                y = 64
            }
        }
    }
})

local resource = {}

resource.factoriopedia_simulation = { init = make_resource("gold-ore") }

resource.autoplace = resource_autoplace.resource_autoplace_settings {
    name = "gold-ore",
    order = "a-b-c",
    base_density = 1,
    base_spots_per_km2 = 1,
    has_starting_area_placement = false,
    regular_rq_factor_multiplier = 1,
    starting_rq_factor_multiplier = 1,
}

resource.type = "resource"
resource.name = "gold-ore"
resource.icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/gold-ore.png"
resource.stage_counts = {
    12000,
    7610,
    4830,
    3060,
    1950,
    1240,
    790,
    500,
    320,
    200,
    130,
    80
}

resource.stages = {
    sheet = {
        filename = "__IndustrialRevolution3Assets2__/graphics/entities/resources/gold-ore.png",
        frame_count = 8,
        height = 128,
        priority = "extra-high",
        scale = 0.5,
        variation_count = 12,
        width = 128
    }
}

resource.collision_box = {
    { -0.1, -0.1 },
    { 0.1,  0.1 }
}

resource.flags = { "placeable-neutral" }
resource.localised_name = { "item-name.gold-ore" }
resource.map_color = { r = 0.9, g = 0.85, b = 0.1 }
resource.tree_removal_probability = 0.7
resource.tree_removal_max_distance = 32 * 32

resource.map_grid = true
resource.minable = {
    mining_particle = "gold-ore-mining-particle",
    mining_time = 1,
    results = {
        {
            amount = 1,
            name = "gold-ore",
            probability = 1,
            type = "item"
        }
    }
}
resource.order = "a-b-c"
resource.selection_box = {
    { -0.5, -0.5 },
    { 0.5,  0.5 }
}

data:extend({ resource })
