local entity = data.raw["resource"]["coal"]

entity.icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/coal.png"
entity.stage_counts = {
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
entity.stages = {
    sheet = {
        filename = "__IndustrialRevolution3Assets2__/graphics/entities/resources/coal.png",
        frame_count = 8,
        height = 128,
        priority = "extra-high",
        scale = 0.5,
        variation_count = 12,
        width = 128
    }
}
