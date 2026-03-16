  local sounds = require("__base__.prototypes.entity.sounds")
  local item_sounds = require("__base__.prototypes.item_sounds")

data:extend
({
  {  --Большая каменная печь
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

  {  --Большая стальная печь
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

  {  --Большая электрическая печь
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

  {  --Большой сборочный автомат 1
    type = "item",
    name = "big-assembling-machine-1",
    icon = "__base__/graphics/icons/assembling-machine-1.png",
    subgroup = "production-machine",
    color_hint = { text = "1" },
    order = "ab[assembling-machine-1]",
    inventory_move_sound = item_sounds.mechanical_inventory_move,
    pick_sound = item_sounds.mechanical_inventory_pickup,
    drop_sound = item_sounds.mechanical_inventory_move,
    place_result = "big-assembling-machine-1",
    stack_size = 5,
    random_tint_color = item_tints.iron_rust
  },

  {  --Большой сборочный автомат 2
    type = "item",
    name = "big-assembling-machine-2",
    icon = "__base__/graphics/icons/assembling-machine-2.png",
    subgroup = "production-machine",
    color_hint = { text = "2" },
    order = "bb[assembling-machine-2]",
    inventory_move_sound = item_sounds.mechanical_inventory_move,
    pick_sound = item_sounds.mechanical_inventory_pickup,
    drop_sound = item_sounds.mechanical_inventory_move,
    place_result = "big-assembling-machine-2",
    stack_size = 5
  },

  {  --Большой электрический бур
    type = "item",
    name = "big-electric-mining-drill",
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    subgroup = "extraction-machine",
    order = "a[items]-bb[electric-mining-drill]",
    inventory_move_sound = item_sounds.drill_inventory_move,
    pick_sound = item_sounds.drill_inventory_pickup,
    drop_sound = item_sounds.drill_inventory_move,
    place_result = "big-electric-mining-drill",
    stack_size = 5
  },

  {  --Большой железный сундук
    type = "item",
    name = "big-iron-chest",
    icon = "__base__/graphics/icons/iron-chest.png",
    subgroup = "storage",
    order = "a[items]-bb[iron-chest]",
    inventory_move_sound = item_sounds.metal_chest_inventory_move,
    pick_sound = item_sounds.metal_chest_inventory_pickup,
    drop_sound = item_sounds.metal_chest_inventory_move,
    place_result = "big-iron-chest",
    stack_size = 5,
    random_tint_color = item_tints.iron_rust
  },

  {  --Большая лаборатория
    type = "item",
    name = "big-lab",
    icon = "__base__/graphics/icons/lab.png",
    subgroup = "production-machine",
    order = "zb[lab]",
    inventory_move_sound = item_sounds.lab_inventory_move,
    pick_sound = item_sounds.lab_inventory_pickup,
    drop_sound = item_sounds.lab_inventory_move,
    place_result = "big-lab",
    stack_size = 1
  },

  {  --Большой радар
    type = "item",
    name = "big-radar",
    icon = "__base__/graphics/icons/radar.png",
    subgroup = "defensive-structure",
    order = "d[radar]-ab[radar]",
    inventory_move_sound = item_sounds.metal_large_inventory_move,
    pick_sound = item_sounds.metal_large_inventory_pickup,
    drop_sound = item_sounds.metal_large_inventory_move,
    place_result = "big-radar",
    stack_size = 5,
    random_tint_color = item_tints.iron_rust
  },

  {  --Большой бойлер
    type = "item",
    name = "big-boiler",
    icon = "__base__/graphics/icons/boiler.png",
    subgroup = "energy",
    order = "b[steam-power]-ab[boiler]",
    inventory_move_sound = item_sounds.steam_inventory_move,
    pick_sound = item_sounds.steam_inventory_pickup,
    drop_sound = item_sounds.steam_inventory_move,
    place_result = "big-boiler",
    stack_size = 5,
    random_tint_color = item_tints.iron_rust
  },

  {  --Большой паровой двигатель
    type = "item",
    name = "big-steam-engine",
    icon = "__base__/graphics/icons/steam-engine.png",
    subgroup = "energy",
    order = "b[steam-power]-bb[steam-engine]",
    inventory_move_sound = item_sounds.steam_inventory_move,
    pick_sound = item_sounds.steam_inventory_pickup,
    drop_sound = item_sounds.steam_inventory_move,
    place_result = "big-steam-engine",
    stack_size = 1,
    random_tint_color = item_tints.iron_rust
  },

  {  --Большой нефтеперерабатывающий завод
    type = "item",
    name = "big-oil-refinery",
    icon = "__base__/graphics/icons/oil-refinery.png",
    subgroup = "production-machine",
    order = "db[refinery]",
    inventory_move_sound = item_sounds.fluid_inventory_move,
    pick_sound = item_sounds.fluid_inventory_pickup,
    drop_sound = item_sounds.fluid_inventory_move,
    place_result = "big-oil-refinery",
    stack_size = 1
  },

  {  --Большая деревянная опора ЛЭП
    type = "item",
    name = "big-small-electric-pole",
    icon = "__base__/graphics/icons/small-electric-pole.png",
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-ab[small-electric-pole]",
    inventory_move_sound = item_sounds.electric_small_inventory_move,
    pick_sound = item_sounds.electric_small_inventory_pickup,
    drop_sound = item_sounds.electric_small_inventory_move,
    place_result = "big-small-electric-pole",
    stack_size = 5
  },



})