data:extend
({
  {  --Большая каменная печь
    type = "recipe",
    name = "big-stone-furnace",
    ingredients = {{type = "item", name = "stone-furnace", amount = 96}},
    results = {{type="item", name="big-stone-furnace", amount=1}}
  },

  {  --Большая стальная печь
    type = "recipe",
    name = "big-steel-furnace",
    ingredients = {{type = "item", name = "steel-furnace", amount = 96}},
    results = {{type="item", name="big-steel-furnace", amount=1}},
    energy_required = 3,
    enabled = false
  },

  {  --Большая электрическая печь
    type = "recipe",
    name = "big-electric-furnace",
    ingredients = {{type = "item", name = "electric-furnace", amount = 96}},
    results = {{type="item", name="big-electric-furnace", amount=1}},
    energy_required = 5,
    enabled = false
  },

  {  --Большой сборочный автомат 1
    type = "recipe",
    name = "big-assembling-machine-1",
    enabled = false,
    ingredients = {{type = "item", name = "assembling-machine-1", amount = 96}},
    results = {{type="item", name="big-assembling-machine-1", amount=1}}
  },

  {  --Большой электрический бур
    type = "recipe",
    name = "big-electric-mining-drill",
    enabled = false,
    ingredients = {{type = "item", name = "electric-mining-drill", amount = 96}},
    results = {{type="item", name="big-electric-mining-drill", amount=1}}
  },

  {  --Большой железный сундук
    type = "recipe",
    name = "big-iron-chest",
    enabled = true,
    ingredients = {{type = "item", name = "iron-chest", amount = 96}},
    results = {{type="item", name="big-iron-chest", amount=1}}
  },

  {  --Большая лаборатория
    type = "recipe",
    name = "big-lab",
    enabled = false,
    ingredients = {{type = "item", name = "lab", amount = 96}},
    results = {{type="item", name="big-lab", amount=1}}
  },

  { --Большой радар
    type = "recipe",
    name = "big-radar",
    enabled = false,
    ingredients = {{type = "item", name = "radar", amount = 96}},
    results = {{type="item", name="big-radar", amount=1}}
  },
})