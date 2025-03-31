
-- Labs
table.insert(data.raw["lab"]["lab"].inputs, "igrys-mineral-science-pack")
table.insert(data.raw["lab"]["biolab"].inputs, "igrys-mineral-science-pack")

-- Tech
table.insert(data.raw["technology"]["promethium-science-pack"].prerequisites, "igrys-mineral-science")

-- Productivity Research
table.insert(data.raw["technology"]["steel-plate-productivity"].effects, {
    type = "change-recipe-productivity",
    recipe = "igrys-steel-plate",
    change = 0.1
})
table.insert(data.raw["technology"]["plastic-bar-productivity"].effects, {
    type = "change-recipe-productivity",
    recipe = "igrys-plastic-bar",
    change = 0.1
})
table.insert(data.raw["technology"]["rocket-part-productivity"].effects, {
    type = "change-recipe-productivity",
    recipe = "igrys-glass-rocket-part",
    change = 0.1
})

-- Igrys Water
table.insert(data.raw["mining-drill"]["pumpjack"].resource_categories, "igrys-water")
data.raw["fluid"]["water"].fuel_value = "1J"