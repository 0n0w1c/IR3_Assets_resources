local item_sounds = require('__base__.prototypes.item_sounds')

local item = {}

item.type = "item"
item.name = "gold-ore"
item.icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/gold-ore.png"
item.icon_size = 64
item.pictures = {
    {
        filename = "__IndustrialRevolution3Assets1__/graphics/icons/64/gold-ore.png",
        size = 64,
        scale = 0.5,
    },
    {
        filename = "__IndustrialRevolution3Assets1__/graphics/icons/64/gold-ore-2.png",
        size = 64,
        scale = 0.5,
    },
    {
        filename = "__IndustrialRevolution3Assets1__/graphics/icons/64/gold-ore-3.png",
        size = 64,
        scale = 0.5,
    },
    {
        filename = "__IndustrialRevolution3Assets1__/graphics/icons/64/gold-ore-4.png",
        size = 64,
        scale = 0.5,
    },
    {
        filename = "__IndustrialRevolution3Assets1__/graphics/icons/64/gold-ore-5.png",
        size = 64,
        scale = 0.5,
    },
    {
        filename = "__IndustrialRevolution3Assets1__/graphics/icons/64/gold-ore-6.png",
        size = 64,
        scale = 0.5,
    },
}
item.subgroup = "raw-resource"
item.order = "f[gold-ore]"
item.stack_size = 50
item.weight = 20 * kg
item.inventory_move_sound = item_sounds.resource_inventory_move
item.pick_sound = item_sounds.resource_inventory_pickup
item.drop_sound = item_sounds.resource_inventory_move

data:extend({ item })
