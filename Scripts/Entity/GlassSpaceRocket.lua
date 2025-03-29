local glassSpaceRocketEntity = table.deepcopy(data.raw["rocket-silo"]["rocket-silo"])
glassSpaceRocketEntity.name = "igrys-glass-space-rocket"
glassSpaceRocketEntity.minable.result = "igrys-glass-space-rocket"
glassSpaceRocketEntity.rocket_parts_required = 20
glassSpaceRocketEntity.fixed_recipe = "igrys-glass-rocket-part"
glassSpaceRocketEntity.icons = {
    {
        icon = glassSpaceRocketEntity.icon,
        tint = {r = 0.8, g = 1, b = 1, a = 0.6}
    }
}
glassSpaceRocketEntity.icon = nil

local glassSpaceRocketItem = table.deepcopy(data.raw["item"]["rocket-silo"])
glassSpaceRocketItem.name = "igrys-glass-space-rocket"
glassSpaceRocketItem.place_result = "igrys-glass-space-rocket"
glassSpaceRocketItem.icons = {
    {
        icon = glassSpaceRocketItem.icon,
        tint = {r = 0.8, g = 1, b = 1, a = 0.6}
    }
}
glassSpaceRocketItem.icon = nil

local glassSpaceRocketRecipe = table.deepcopy(data.raw["recipe"]["rocket-silo"])
glassSpaceRocketRecipe.name = "igrys-glass-space-rocket"
glassSpaceRocketRecipe.results = {{type="item", name="igrys-glass-space-rocket", amount=1}}
glassSpaceRocketRecipe.ingredients = {
    {type="item", name="igrys-glass", amount=1000},
    {type="item", name="steel-plate", amount=1000},
    {type="item", name="electric-engine-unit", amount=200},
    {type="item", name="igrys-rich-magic-teseract", amount=10},
    {type="item", name="igrys-conductive-brick", amount=200}
}
glassSpaceRocketRecipe.main_product = "igrys-glass-space-rocket"
glassSpaceRocketRecipe.enabled = settings.startup["igrys-enable-all"].value

local glassRocketPartRecipe = table.deepcopy(data.raw["recipe"]["rocket-part"])
glassRocketPartRecipe.name = "igrys-glass-rocket-part"
glassRocketPartRecipe.icons = {
    {
        icon = "__base__/graphics/icons/rocket-part.png",
        tint = {r = 0.8, g = 1, b = 1, a = 0.6}
    }
}
glassSpaceRocketRecipe.icon = nil

table.insert(glassRocketPartRecipe.ingredients, {type="item", name="igrys-glass", amount=5})

data:extend{glassSpaceRocketEntity, glassSpaceRocketItem, glassSpaceRocketRecipe, glassRocketPartRecipe}