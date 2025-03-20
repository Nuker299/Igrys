local resource_autoplace = require("resource-autoplace")

data:extend({
    {
        type = "assembling-machine",
        name = "igrys-copper-plate-machine",
        icon = "__Igrys__/Assets/Entity/CopperPlateMachine.png",
        icon_size = 1024,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        
        fixed_recipe = "igrys-free-copper-plate",
        energy_usage = "1W",
        crafting_speed = 1,
        crafting_categories = {"igrys-making-stuff-out-of-thin-air"},
        energy_source = {type = "electric", usage_priority = "secondary-input"},
        
        subgroup = "extraction-machine",
        collision_box = {{-1.0, -0.9}, {1.0, 1.0}},
        selection_box = {{-1.2, -1.2}, {1.2, 1.2}},
        minable =
        {
            mining_particle = "stone-particle",
            mining_time = 2,
            result = "igrys-copper-plate-machine",
            count = 1
        },
        map_color = {129, 105, 78},
        render_layer = "object",
        max_health = 500,
    }, {
        type = "item",
        name = "igrys-copper-plate-machine",
        icon = "__Igrys__/Assets/Entity/CopperPlateMachine.png",
        icon_size = 256,
        
        subgroup = "extraction-machine",
        
        weight = 1000000000,
        stack_size = 50,
        place_result = "igrys-copper-plate-machine"
    }, 
})
local restrictedRecipe =
    {
        type = "recipe",
        name = "igrys-copper-plate-machine",
        icon = "__Igrys__/Assets/Entity/CopperPlateMachine.png",
        icon_size = 1024,
        enabled = settings.startup["igrys-enable-all"].value,
        results = {
            {type="item", name="igrys-glass", amount=50},
            {type="item", name="plastic-bar", amount=20},
            {type="item", name="stone-furnace", amount=10},
        },
        products = {
            {type="item", name="igrys-copper-plate-machine", amount=1},
        },
        energy_required = 30,
        category = "crafting"
    }

PlanetsLib.restrict_to_planet(restrictedRecipe, "igrys")
data:extend{restrictedRecipe}