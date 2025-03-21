--require("Scripts.Recipes.EnhancedSciencePacks")

table.insert(data.raw["lab"]["lab"].inputs, "igrys-mineral-science-pack")
table.insert(data.raw["lab"]["biolab"].inputs, "igrys-mineral-science-pack")
table.insert(data.raw["technology"]["promethium-science-pack"].prerequisites, "igrys-mineral-science")
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
