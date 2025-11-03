local URANIUM_TINT = { r = 0.2, g = 0.9, b = 0.2, a = 1 }
local resource = data.raw["resource"]["uranium-ore"]

resource.icon = nil
resource.icons = {
    {
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/iron-ore.png",
        icon_size = 64,
        tint = { r = 0.5, g = 1, b = 0.5, a = 1 },
    }
}

resource.minable.mining_particle = "uranium-ore-mining-particle"

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
        filename = "__IndustrialRevolution3Assets2__/graphics/entities/resources/iron-ore.png",
        frame_count = 8,
        height = 128,
        priority = "extra-high",
        scale = 0.5,
        variation_count = 12,
        tint = URANIUM_TINT,
        width = 128
    }
}

resource.effect_animation_period = 4

resource.stages_effect = {
    sheet = {
        filename = "__IndustrialRevolution3Assets2__/graphics/entities/resources/iron-ore.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        frame_count = 8,
        variation_count = 12,
        scale = 0.5,
        tint = URANIUM_TINT,
        blend_mode = "additive",
        flags = { "light" },
    }
}
