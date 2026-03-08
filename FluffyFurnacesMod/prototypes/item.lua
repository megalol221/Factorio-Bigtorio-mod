  local sounds = require("__base__.prototypes.entity.sounds")
  local item_sounds = require("__base__.prototypes.item_sounds")

data:extend
({
  {
    type = "item",
    name = "big-stone-furnace",
    icon = "__base__/graphics/icons/stone-furnace.png",
    subgroup = "smelting-machine",
    order = "ab[stone-furnace]",
    inventory_move_sound = item_sounds.brick_inventory_move,
    pick_sound = item_sounds.brick_inventory_pickup,
    drop_sound = item_sounds.brick_inventory_move,
    place_result = "big-stone-furnace",
    stack_size = 5
  },
  --Большая каменная печь

  {
    type = "item",
    name = "big-steel-furnace",
    icon = "__base__/graphics/icons/steel-furnace.png",
    subgroup = "smelting-machine",
    order = "bb[steel-furnace]",
    inventory_move_sound = item_sounds.metal_large_inventory_move,
    pick_sound = item_sounds.metal_large_inventory_pickup,
    drop_sound = item_sounds.metal_large_inventory_move,
    place_result = "big-steel-furnace",
    stack_size = 5
  },
  --Большая стальная печь

  {
    type = "item",
    name = "big-electric-furnace",
    icon = "__base__/graphics/icons/electric-furnace.png",
    subgroup = "smelting-machine",
    order = "cb[electric-furnace]",
    inventory_move_sound = item_sounds.electric_large_inventory_move,
    pick_sound = item_sounds.electric_large_inventory_pickup,
    drop_sound = item_sounds.electric_large_inventory_move,
    place_result = "big-electric-furnace",
    stack_size = 5,
    weight = 20*kg
  },
  --Большая электрическая печь
})