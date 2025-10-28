if mods["quality"] then
    local resources = { "coal", "copper-ore", "gold-ore", "iron-ore", "stone", "tin-ore" }

    for _, resource in pairs(resources) do
        local recipe = data.raw["recipe"][resource .. "-recycling"]

        if recipe then
            require("__quality__/prototypes/recycling")
            local item = data.raw["item"][resource]
            local icons = generate_recycling_recipe_icons_from_item(item)

            recipe.icons = icons
        end
    end
end
