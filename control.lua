local ir3_asset_packs = {
    "IndustrialRevolution3Assets1",
    "IndustrialRevolution3Assets2",
    "IndustrialRevolution3Assets3",
    "IndustrialRevolution3Assets4"
}

for _, asset_pack in ipairs(ir3_asset_packs) do
    if not script.active_mods[asset_pack] then
        return
    end
end

local RESOURCES = { "tin-ore", "gold-ore", "natural-gas-fissure" }

local function update_surface(surface)
    local map_gen_settings = surface.map_gen_settings

    map_gen_settings.autoplace_controls = map_gen_settings.autoplace_controls or {}
    map_gen_settings.autoplace_settings = map_gen_settings.autoplace_settings or {}
    map_gen_settings.autoplace_settings.entity = map_gen_settings.autoplace_settings.entity or {}
    map_gen_settings.autoplace_settings.entity.settings =
        map_gen_settings.autoplace_settings.entity.settings or {}

    for _, resource in ipairs(RESOURCES) do
        if prototypes.autoplace_control[resource] then
            local control = map_gen_settings.autoplace_controls[resource]
            if not control then
                map_gen_settings.autoplace_controls[resource] = { frequency = 1, size = 1, richness = 1 }
            else
                if control.frequency == nil then control.frequency = 1 end
                if control.size == nil then control.size = 1 end
                if control.richness == nil then control.richness = 1 end
            end

            map_gen_settings.autoplace_settings.entity.settings[resource] =
                map_gen_settings.autoplace_settings.entity.settings[resource] or {}
        end
    end

    surface.map_gen_settings = map_gen_settings
end

local function update_all_surfaces()
    for _, surface in pairs(game.surfaces) do
        if surface.planet then update_surface(surface) end
    end
end

script.on_configuration_changed(update_all_surfaces)
