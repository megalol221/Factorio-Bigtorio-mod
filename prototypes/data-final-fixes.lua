if mods["space-age"] then

    data.raw["assembling-machine"]["big-assembling-machine-1"].crafting_categories = {"crafting", "basic-crafting", "advanced-crafting", "electronics", "pressing"},
    --data.raw["assembling-machine"]["big-assembling-machine-2"].crafting_categories = {"basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid", "electronics", "electronics-with-fluid", "pressing", "metallurgy-or-assembling", "organic-or-hand-crafting", "organic-or-assembling", "electronics-or-assembling", "cryogenics-or-assembling", "crafting-with-fluid-or-metallurgy"}
    --data.raw["assembling-machine"]["big-assembling-machine-3"].crafting_categories = {"basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid", "electronics", "electronics-with-fluid", "pressing", "metallurgy-or-assembling", "organic-or-hand-crafting", "organic-or-assembling", "electronics-or-assembling", "cryogenics-or-assembling", "crafting-with-fluid-or-metallurgy"}

    table.insert(data.raw.lab["big-lab"].inputs, "metallurgic-science-pack")
    table.insert(data.raw.lab["big-lab"].inputs, "agricultural-science-pack")
    table.insert(data.raw.lab["big-lab"].inputs, "electromagnetic-science-pack")
    table.insert(data.raw.lab["big-lab"].inputs, "cryogenic-science-pack")
    table.insert(data.raw.lab["big-lab"].inputs, "promethium-science-pack")
    
end