if data.raw.technology["advanced-material-processing"] and data.raw.recipe["big-steel-furnace"] then

    if not data.raw.technology["advanced-material-processing"].effects then
        data.raw.technology["advanced-material-processing"].effects = {}
    end
    

    table.insert(data.raw.technology["advanced-material-processing"].effects, {
        type = "unlock-recipe",
        recipe = "big-steel-furnace"
    })
end
--Большая стальная печь

if data.raw.technology["advanced-material-processing-2"] and data.raw.recipe["big-electric-furnace"] then

    if not data.raw.technology["advanced-material-processing-2"].effects then
        data.raw.technology["advanced-material-processing-2"].effects = {}
    end
    

    table.insert(data.raw.technology["advanced-material-processing-2"].effects, {
        type = "unlock-recipe",
        recipe = "big-electric-furnace"
    })
end
--Большая электрическая печь