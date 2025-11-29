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
