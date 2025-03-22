local glassSpaceRocketEntity = table.deepcopy(data.raw["rocket-silo"]["rocket-silo"])
glassSpaceRocketEntity.name = "igrys-glass-space-rocket"
glassSpaceRocketEntity.minable.result = "igrys-glass-space-rocket"
glassSpaceRocketEntity.rocket_parts_required = 20
glassSpaceRocketEntity.fixed_recipe = "igrys-glass-rocket-part"

local glassSpaceRocketItem = table.deepcopy(data.raw["item"]["rocket-silo"])
glassSpaceRocketItem.name = "igrys-glass-space-rocket"
glassSpaceRocketItem.place_result = "igrys-glass-space-rocket"

local glassSpaceRocketRecipe = table.deepcopy(data.raw["recipe"]["rocket-silo"])
glassSpaceRocketRecipe.name = "igrys-glass-space-rocket"
glassSpaceRocketRecipe.results = {{type="item", name="igrys-glass-space-rocket", amount=1}}
glassSpaceRocketRecipe.ingredients = {
    {type="item", name="igrys-glass", amount=1000},
    {type="item", name="steel-plate", amount=1000},
    {type="item", name="electric-engine-unit", amount=200},
    {type="item", name="igrys-rich-magic-teseract", amount=100},
    {type="item", name="igrys-conductive-brick", amount=200}
}
glassSpaceRocketRecipe.main_product = "igrys-glass-space-rocket"
glassSpaceRocketRecipe.enabled = settings.startup["igrys-enable-all"].value

local glassRocketPartRecipe = table.deepcopy(data.raw["recipe"]["rocket-part"])
glassRocketPartRecipe.name = "igrys-glass-rocket-part"
table.insert(glassRocketPartRecipe.ingredients, {type="item", name="igrys-glass", amount=5})

data:extend{glassSpaceRocketEntity, glassSpaceRocketItem, glassSpaceRocketRecipe, glassRocketPartRecipe}