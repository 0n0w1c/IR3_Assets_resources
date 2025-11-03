local resource = data.raw["resource"]["iron-ore"]

resource.icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/iron-ore.png"

resource.minable.mining_particle = "iron-ore-mining-particle"

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
        width = 128
    }
}
