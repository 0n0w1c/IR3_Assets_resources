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

require("prototypes/resource/uranium-ore")

if settings.startup["IR3-tin-ore"].value == true then
    require("prototypes/resource/tin-ore")
    require("prototypes/item/tin-ore")

    if data.raw["autoplace-control"]["tin-ore"] and data.raw["map-gen-presets"] and data.raw["map-gen-presets"].default then
        for _, preset in pairs(data.raw["map-gen-presets"].default) do
            if type(preset) == "table" and
                preset.basic_settings and
                preset.basic_settings.autoplace_controls and
                preset.basic_settings.autoplace_controls["iron-ore"] then
                preset.basic_settings.autoplace_controls["tin-ore"] =
                    preset.basic_settings.autoplace_controls["iron-ore"]
            end
        end
    end
end

if settings.startup["IR3-gold-ore"].value == true then
    require("prototypes/resource/gold-ore")
    require("prototypes/item/gold-ore")

    if data.raw["autoplace-control"]["gold-ore"] and data.raw["map-gen-presets"] and data.raw["map-gen-presets"].default then
        for _, preset in pairs(data.raw["map-gen-presets"].default) do
            if type(preset) == "table" and
                preset.basic_settings and
                preset.basic_settings.autoplace_controls and
                preset.basic_settings.autoplace_controls["iron-ore"] then
                preset.basic_settings.autoplace_controls["gold-ore"] =
                    preset.basic_settings.autoplace_controls["iron-ore"]
            end
        end
    end
end
