function GlassSpaceRocket()
    local glassSpaceRocketEntity = table.deepcopy(data.raw["rocket-silo"]["rocket-silo"])
    glassSpaceRocketEntity.name = "igrys-glass-space-rocket"
    glassSpaceRocketEntity.minable.result = "igrys-glass-space-rocket"
    glassSpaceRocketEntity.rocket_parts_required = 25
    glassSpaceRocketEntity.fixed_recipe = "igrys-glass-space-rocket-part"
    
    local glassSpaceRocketItem = table.deepcopy(data.raw["item"]["rocket-silo"])
    glassSpaceRocketItem.name = "igrys-glass-space-rocket"
    glassSpaceRocketItem.place_result = "igrys-glass-space-rocket"
    
    local glassSpaceRocketRecipe = table.deepcopy(data.raw["recipe"]["rocket-silo"])
    glassSpaceRocketRecipe.name = "igrys-glass-space-rocket"
    glassSpaceRocketRecipe.results = {{type="item", name="igrys-glass-space-rocket", amount=1}}
    glassSpaceRocketRecipe.main_product = "igrys-glass-space-rocket"
    glassSpaceRocketRecipe.enabled = true
    
    local glassRocketPartRecipe = table.deepcopy(data.raw["recipe"]["rocket-part"])
    glassRocketPartRecipe.name = "igrys-glass-space-rocket-part"
    table.insert(glassRocketPartRecipe.ingredients, {type="item", name="igrys-glass", amount=1})
    
    data:extend{glassSpaceRocketEntity, glassSpaceRocketItem, glassSpaceRocketRecipe, glassRocketPartRecipe}
end

return GlassSpaceRocket