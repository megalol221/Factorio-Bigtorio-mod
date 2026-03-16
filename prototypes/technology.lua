if data.raw.technology["advanced-material-processing"] and data.raw.recipe["steel-furnace"] then

    if not data.raw.technology["advanced-material-processing"].effects then
        data.raw.technology["advanced-material-processing"].effects = {}
    end
    

    table.insert(data.raw.technology["advanced-material-processing"].effects, {
        type = "unlock-recipe",
        recipe = "big-steel-furnace"
    })
end  --Большая стальная печь

if data.raw.technology["advanced-material-processing-2"] and data.raw.recipe["electric-furnace"] then

    if not data.raw.technology["advanced-material-processing-2"].effects then
        data.raw.technology["advanced-material-processing-2"].effects = {}
    end
    

    table.insert(data.raw.technology["advanced-material-processing-2"].effects, {
        type = "unlock-recipe",
        recipe = "big-electric-furnace"
    })
end  --Большая электрическая печь

if data.raw.technology["automation"] and data.raw.recipe["assembling-machine-1"] then

    if not data.raw.technology["automation"].effects then
        data.raw.technology["automation"].effects = {}
    end
    

    table.insert(data.raw.technology["automation"].effects, {
        type = "unlock-recipe",
        recipe = "big-assembling-machine-1"
    })
end  --Большой сборочный автомат 1
 
if data.raw.technology["automation-2"] and data.raw.recipe["assembling-machine-2"] then

    if not data.raw.technology["automation-2"].effects then
        data.raw.technology["automation-2"].effects = {}
    end
    

    table.insert(data.raw.technology["automation-2"].effects, {
        type = "unlock-recipe",
        recipe = "big-assembling-machine-2"
    })
end  --Большой сборочный автомат 2

if data.raw.technology["electric-mining-drill"] and data.raw.recipe["electric-mining-drill"] then

    if not data.raw.technology["electric-mining-drill"].effects then
        data.raw.technology["electric-mining-drill"].effects = {}
    end
    

    table.insert(data.raw.technology["electric-mining-drill"].effects, {
        type = "unlock-recipe",
        recipe = "big-electric-mining-drill"
    })
end  --Большой электрический бур

if data.raw.technology["electronics"] and data.raw.recipe["lab"] then

    if not data.raw.technology["electronics"].effects then
        data.raw.technology["electronics"].effects = {}
    end
    

    table.insert(data.raw.technology["electronics"].effects, {
        type = "unlock-recipe",
        recipe = "big-lab"
    })
end  --Большая лаборатория

if data.raw.technology["radar"] and data.raw.recipe["radar"] then

    if not data.raw.technology["radar"].effects then
        data.raw.technology["radar"].effects = {}
    end
    

    table.insert(data.raw.technology["radar"].effects, {
        type = "unlock-recipe",
        recipe = "big-radar"
    })
end  --Большой радар

if data.raw.technology["steam-power"] and data.raw.recipe["boiler"] then

    if not data.raw.technology["steam-power"].effects then
        data.raw.technology["steam-power"].effects = {}
    end
    

    table.insert(data.raw.technology["steam-power"].effects, {
        type = "unlock-recipe",
        recipe = "big-boiler"
    })
end  --Большой бойлер

if data.raw.technology["steam-power"] and data.raw.recipe["steam-engine"] then

    if not data.raw.technology["steam-power"].effects then
        data.raw.technology["steam-power"].effects = {}
    end
    

    table.insert(data.raw.technology["steam-power"].effects, {
        type = "unlock-recipe",
        recipe = "big-steam-engine"
    })
end  --Большой паровой двигатель 

if data.raw.technology["oil-processing"] and data.raw.recipe["oil-refinery"] then

    if not data.raw.technology["oil-processing"].effects then
        data.raw.technology["oil-processing"].effects = {}
    end
    

    table.insert(data.raw.technology["oil-processing"].effects, {
        type = "unlock-recipe",
        recipe = "big-oil-refinery"
    })
end  --Большой нефтеперерабатывающий завод

if data.raw.technology["electronics"] and data.raw.recipe["small-electric-pole"] then

    if not data.raw.technology["electronics"].effects then
        data.raw.technology["electronics"].effects = {}
    end
    

    table.insert(data.raw.technology["electronics"].effects, {
        type = "unlock-recipe",
        recipe = "big-small-electric-pole"
    })
end  --Большая деревянная опора ЛЭП



