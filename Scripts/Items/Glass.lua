
local glass = {
        type="item",
        name="igrys-glass",
        icon = "__Igrys__/Assets/Items/glass.png",
        stack_size = 200,
        subgroup = "raw-material",
        weight = 20000
    }
    
    local glassRecipe = {
        type = "recipe",
        name = "igrys-glass",
        enabled = settings.startup["igrys-enable-all"].value,
        allow_productivity = true,
        ingredients = {{type="item", name="stone", amount=300}},
        results = {
            {type="item", name="igrys-glass", amount=50},
            {type="item", name="stone", amount=50}
        },
        main_product = "igrys-glass",
        energy_required = 60,
        category = "crafting"
    }
    
    data:extend{glass, glassRecipe}

PlanetsLib.set_default_import_location("igrys-glass", "igrys")