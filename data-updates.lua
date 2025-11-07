if not (mods["IndustrialRevolution3Assets1"]
        and mods["IndustrialRevolution3Assets2"]
        and mods["IndustrialRevolution3Assets3"]
        and mods["IndustrialRevolution3Assets4"]
    ) then
    return
end

require("prototypes/resource/coal")
require("prototypes/item/coal")

require("prototypes/resource/copper-ore")
require("prototypes/item/copper-ore")

require("prototypes/resource/iron-ore")
require("prototypes/item/iron-ore")

require("prototypes/resource/stone")
require("prototypes/item/stone")

if settings.startup["IR3-uranium-ore"].value == true then
    require("prototypes/resource/uranium-ore")
    require("prototypes/item/uranium-ore")
end

if settings.startup["IR3-tin-ore"].value == true then
    require("prototypes/resource/tin-ore")
    require("prototypes/item/tin-ore")

    require("prototypes/autoplace-control/tin-ore")
    for _, preset in pairs(data.raw["map-gen-presets"].default) do
        if type(preset) == "table" and
            preset.basic_settings and
            preset.basic_settings.autoplace_controls and
            preset.basic_settings.autoplace_controls["stone"] then
            preset.basic_settings.autoplace_controls["tin-ore"] =
                table.deepcopy(preset.basic_settings.autoplace_controls["stone"])
        end
    end

    if mods["quality"] then
        require("prototypes/recipe/tin-ore-recycling")
    end
end

if settings.startup["IR3-gold-ore"].value == true then
    require("prototypes/resource/gold-ore")
    require("prototypes/item/gold-ore")

    require("prototypes/autoplace-control/gold-ore")
    for _, preset in pairs(data.raw["map-gen-presets"].default) do
        if type(preset) == "table" and
            preset.basic_settings and
            preset.basic_settings.autoplace_controls and
            preset.basic_settings.autoplace_controls["stone"] then
            preset.basic_settings.autoplace_controls["gold-ore"] =
                table.deepcopy(preset.basic_settings.autoplace_controls["stone"])
        end
    end

    if mods["quality"] then
        require("prototypes/recipe/gold-ore-recycling")
    end
end

if settings.startup["IR3-natural-gas"].value == true then
    require("prototypes/resource-category/gas")
    require("prototypes/sprite/natural-gas-fissure")

    require("prototypes/resource/natural-gas-fissure")
    require("prototypes/fluid/natural-gas")

    require("prototypes/autoplace-control/natural-gas-fissure")
    for _, preset in pairs(data.raw["map-gen-presets"].default) do
        if type(preset) == "table" and
            preset.basic_settings and
            preset.basic_settings.autoplace_controls and
            preset.basic_settings.autoplace_controls["crude-oil"] then
            preset.basic_settings.autoplace_controls["natural-gas-fissure"] =
                table.deepcopy(preset.basic_settings.autoplace_controls["crude-oil"])
        end
    end
end
