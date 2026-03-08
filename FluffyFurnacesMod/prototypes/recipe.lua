data:extend
({
  {
    type = "recipe",
    name = "big-stone-furnace",
    ingredients = {{type = "item", name = "stone", amount = 480}},
    results = {{type="item", name="big-stone-furnace", amount=1}}
  },
  --Большая каменная печь

  {
    type = "recipe",
    name = "big-steel-furnace",
    ingredients = {{type = "item", name = "steel-plate", amount = 576}, {type = "item", name = "stone-brick", amount = 960}},
    results = {{type="item", name="big-steel-furnace", amount=1}},
    energy_required = 3,
    enabled = false
  },
  --Большая стальная печь

  {
    type = "recipe",
    name = "big-electric-furnace",
    ingredients = {{type = "item", name = "steel-plate", amount = 960}, {type = "item", name = "advanced-circuit", amount = 480}, {type = "item", name = "stone-brick", amount = 960}},
    results = {{type="item", name="big-electric-furnace", amount=1}},
    energy_required = 5,
    enabled = false
  },
  --Большая стальная печь

})