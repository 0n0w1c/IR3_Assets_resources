require("__base__/prototypes/factoriopedia-util")

local resource_autoplace = require('resource-autoplace');

data.raw["planet"]["nauvis"].map_gen_settings.autoplace_controls["tin-ore"] = {}
data.raw["planet"]["nauvis"].map_gen_settings.autoplace_settings.entity.settings["tin-ore"] = {}

resource_autoplace.initialize_patch_set("tin-ore", true)

local resource = {}

resource.type = "resource"
resource.name = "tin-ore"

resource.factoriopedia_simulation = { init = make_resource("tin-ore") }

resource.autoplace = resource_autoplace.resource_autoplace_settings {
    name = "tin-ore",
    order = "a-b-b",
    base_density = 1,
    base_spots_per_km2 = 1,
    has_starting_area_placement = true,
    regular_rq_factor_multiplier = 1,
    starting_rq_factor_multiplier = 1,
}

resource.icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/tin-ore.png"
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
        filename = "__IndustrialRevolution3Assets2__/graphics/entities/resources/tin-ore.png",
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
resource.localised_name = { "item-name.tin-ore" }
resource.map_color = { r = 0.3, g = 0.3, b = 0.6 }
resource.tree_removal_probability = 0.7
resource.tree_removal_max_distance = 32 * 32

resource.map_grid = true
resource.minable = {
    mining_particle = "tin-ore-mining-particle",
    mining_time = 1,
    results = {
        {
            amount = 1,
            name = "tin-ore",
            probability = 1,
            type = "item"
        }
    }
}
resource.order = "a-b-b"
resource.selection_box = {
    { -0.5, -0.5 },
    { 0.5,  0.5 }
}

data:extend({ resource })
