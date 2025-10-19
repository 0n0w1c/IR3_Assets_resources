if not (mods["IndustrialRevolution3Assets1"]
        and mods["IndustrialRevolution3Assets2"]
        and mods["IndustrialRevolution3Assets3"]
        and mods["IndustrialRevolution3Assets4"]
    ) then
    return
end

require("prototypes/terrain/coal")
require("prototypes/item/coal")

require("prototypes/terrain/copper-ore")
require("prototypes/item/copper-ore")

require("prototypes/terrain/iron-ore")
require("prototypes/item/iron-ore")

require("prototypes/terrain/stone")
require("prototypes/item/stone")
