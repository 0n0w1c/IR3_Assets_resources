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
