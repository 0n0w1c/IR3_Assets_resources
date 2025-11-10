local resource_autoplace = require('resource-autoplace');

data.raw["planet"]["nauvis"].map_gen_settings.autoplace_controls["natural-gas-fissure"] = {}
data.raw["planet"]["nauvis"].map_gen_settings.autoplace_settings.entity.settings["natural-gas-fissure"] = {}

resource_autoplace.initialize_patch_set("natural-gas-fissure", true)

data:extend({
    {
        type = "resource",
        name = "natural-gas-fissure",

        autoplace = resource_autoplace.resource_autoplace_settings(
            {
                name = "natural-gas-fissure",
                order = "c-n",
                minimum = 60000,
                normal = 300000,
                additional_richness = 220000,
                base_density = 8.2,
                base_spots_per_km2 = 1.8,
                random_probability = 1 / 48,
                random_spot_size_minimum = 1,
                random_spot_size_maximum = 1,
                has_starting_area_placement = false,
                regular_rq_factor_multiplier = 1,
                probability_expression =
                "(var('control:natural-gas-fissure:size') > 0) * (clamp(var('default-natural-gas-fissure-patches'), 0, 1)* random_penalty{x = x, y = y, source = 1, amplitude = 1 /0.020833333333333})",
                richness_expression =
                "(var('control:natural-gas-fissure:size') > 0) * (1*var('control:natural-gas-fissure:richness')*(var('default-natural-gas-fissure-patches')/0.020833333333333+220000)*max((1000+distance)/2600,1))",
            }),
        category = "gas",
        collision_box = {
            { -1.4, -1.4 },
            { 1.4,  1.4 }
        },
        effect_animation_period = 4,
        effect_animation_period_deviation = 0.5,
        highlight = true,
        icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/generic-fissure.png",
                icon_mipmaps = 4,
                icon_size = 64
            },
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/natural-gas.png",
                icon_mipmaps = 4,
                icon_size = 64,
                scale = 0.25,
                shift = { 0, -8 }
            }
        },
        infinite = true,
        infinite_depletion_amount = 10,
        map_color = { r = 0.5, g = 0.9, b = 1, a = 1 },
        map_grid = false,
        max_effect_alpha = 1,
        min_effect_alpha = 0.125,
        minable = {
            mining_time = 1,
            results = {
                {
                    type = "fluid",
                    name = "natural-gas",
                    temperature = 15,
                    amount_min = 10,
                    amount_max = 10,
                    probability = 1
                }
            }
        },

        minimum = 60000,
        normal = 300000,
        order = "a-g",
        flags = { "placeable-neutral" },
        remove_decoratives = "true",
        resource_patch_search_radius = 12,
        selection_box = {
            { -0.5, -0.5 },
            { 0.5,  0.5 }
        },
        stage_counts = {
            0
        },
        stages = {
            sheet = {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/resources/fissures.png",
                frame_count = 8,
                height = 192,
                line_length = 2,
                priority = "extra-high",
                scale = 0.5,
                variation_count = 1,
                width = 192
            }
        },
        subgroup = "raw-resource",
        tree_removal_max_distance = 1024,
        tree_removal_probability = 1,
        draw_stateless_visualisation_under_building = false,
        stateless_visualisation = {
            {
                count = 1,
                render_layer = "smoke",
                animation = {
                    filename = "__base__/graphics/entity/crude-oil/oil-smoke-outer.png",
                    frame_count = 47,
                    line_length = 16,
                    width = 90,
                    height = 188,
                    animation_speed = 0.3,
                    shift = { 0, -2.25 },
                    scale = 1,
                    draw_as_glow = true,
                    tint = { r = 0.2, g = 0.2, b = 0.2, a = 0.1 },
                },
            },
            {
                count = 1,
                render_layer = "smoke",
                animation = {
                    filename = "__base__/graphics/entity/crude-oil/oil-smoke-inner.png",
                    frame_count = 47,
                    line_length = 16,
                    width = 40,
                    height = 84,
                    animation_speed = 0.3,
                    shift = { 0, -1 },
                    scale = 1,
                    draw_as_glow = true,
                    tint = { r = 0.2, g = 0.2, b = 0.2, a = 0.1 },
                }
            }
        }
    }
})
