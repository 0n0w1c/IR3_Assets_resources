data:extend({
    {
        type = "optimized-particle",
        name = "copper-ore-mining-particle",
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
                y = 32
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
                y = 32
            }
        }
    }
})

local resource = data.raw["resource"]["copper-ore"]

resource.icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-ore.png"

resource.minable.mining_particle = "copper-ore-mining-particle"

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
        filename = "__IndustrialRevolution3Assets2__/graphics/entities/resources/copper-ore.png",
        frame_count = 8,
        height = 128,
        priority = "extra-high",
        scale = 0.5,
        variation_count = 12,
        width = 128
    }
}
