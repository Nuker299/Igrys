data:extend({
    {
        type = "technology",
        name = "planet-discovery-igrys",
        icons = PlanetsLib.technology_icon_planet("__Igrys__/Assets/igrys.png"),
        icon_size = 256,
        effects = {
            {
                type = "unlock-space-location",
                space_location = "igrys",
                use_icon_overlay_constant = true,
            },
        },
        prerequisites = {
            "metallurgic-science-pack",
            "igrys-glassworking",
        },
        unit = {
            count = 1000,
            ingredients = {
                { "production-science-pack", 1},
                { "metallurgic-science-pack", 1}
            },
            time = 15,
        },
        essential = true,
    },
    {
        type = "technology",
        name = "igrys-glassworking",
        icon = "__Igrys__/Assets/Technologies/glassworking.png",
        icon_size = 1024,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-glass"
            },
        },
        prerequisites = {
            "automation-3"
        },
        unit = {
            count = 500,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1},
            },
            time = 60,
        },
        essential = true,
    }, {
        type = "technology",
        name = "igrys-glassworking-2",
        icon = "__Igrys__/Assets/Technologies/glassworking.png",
        icon_size = 1024,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-electronic-circuit"
            },
        },
        prerequisites = {
            "igrys-glassworking"
        },
        research_trigger ={
            type = "craft-item",
            item = "igrys-glass",
            count = 1
        }
    }, {
        type = "technology",
        name = "igrys-conductive-brick",
        icon = "__Igrys__/Assets/Technologies/conductive-brick.png",
        icon_size = 1024,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-conductive-brick"
            }, {
                type = "unlock-recipe",
                recipe = "igrys-copper-rail"
            }
        },
        prerequisites = {
            "planet-discovery-igrys"
        },
        research_trigger ={
            type = "mine-entity",
            entity = "igrys-stone",
            count = 100
        }
    }
})