local RESOURCES = { "tin-ore", "gold-ore", "natural-gas-fissure", "sour-gas-fissure" }

local function remove_resource_from_surface(surface, resource)
    local map_gen_settings = surface.map_gen_settings
    local changed = false

    if map_gen_settings.autoplace_controls and map_gen_settings.autoplace_controls[resource] then
        map_gen_settings.autoplace_controls[resource] = nil
        changed = true
    end

    local entity_settings =
        map_gen_settings.autoplace_settings
        and map_gen_settings.autoplace_settings.entity
        and map_gen_settings.autoplace_settings.entity.settings

    if entity_settings and entity_settings[resource] then
        entity_settings[resource] = nil
        changed = true
    end

    if changed then
        surface.map_gen_settings = map_gen_settings
    end
end

for _, surface in pairs(game.surfaces) do
    if surface.planet and surface.name ~= "nauvis" then
        for _, resource in ipairs(RESOURCES) do
            remove_resource_from_surface(surface, resource)
        end
    end
end
