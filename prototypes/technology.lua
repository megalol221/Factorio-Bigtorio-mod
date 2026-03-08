if data.raw.technology["advanced-material-processing"] and data.raw.recipe["steel-furnace"] then

    if not data.raw.technology["advanced-material-processing"].effects then
        data.raw.technology["advanced-material-processing"].effects = {}
    end
    

    table.insert(data.raw.technology["advanced-material-processing"].effects, {
        type = "unlock-recipe",
        recipe = "big-steel-furnace"
    })
end
--Большая стальная печь

if data.raw.technology["advanced-material-processing-2"] and data.raw.recipe["electric-furnace"] then

    if not data.raw.technology["advanced-material-processing-2"].effects then
        data.raw.technology["advanced-material-processing-2"].effects = {}
    end
    

    table.insert(data.raw.technology["advanced-material-processing-2"].effects, {
        type = "unlock-recipe",
        recipe = "big-electric-furnace"
    })
end
--Большая электрическая печь

if data.raw.technology["automation"] and data.raw.recipe["assembling-machine-1"] then

    if not data.raw.technology["automation"].effects then
        data.raw.technology["automation"].effects = {}
    end
    

    table.insert(data.raw.technology["automation"].effects, {
        type = "unlock-recipe",
        recipe = "big-assembling-machine-1"
    })
end
 --Большой Сборочный автомат 1
 