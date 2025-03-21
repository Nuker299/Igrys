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
            },{
                type = "unlock-recipe",
                recipe = "igrys-conductive-brick"
            },{
                type = "unlock-recipe",
                recipe = "igrys-copper-plate-machine"
            }
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
            },{
                type = "unlock-recipe",
                recipe = "igrys-automation-science-pack"
            },
        },
        prerequisites = {
            "igrys-glassworking"
        },
        unit = {
            count = 1000,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1},
            },
            time = 30,
        },
        essential = true,
    }, {
        type = "technology",
        name = "igrys-conductive-brick-usage",
        icon = "__Igrys__/Assets/Entity/MagicPumpjack.png",
        icon_size = 1024,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-magic-pumpjack"
            }, {
                type = "unlock-recipe",
                recipe = "igrys-copper-rail"
            }
        },
        prerequisites = {
            "planet-discovery-igrys"
        },
        research_trigger ={
            type = "craft-item",
            item = "igrys-conductive-brick",
            count = 10
        },
        essential = true,
    }, {
        type = "technology",
        name = "igrys-magic-fluid",
        icon = "__Igrys__/Assets/Items/magic-fluid.png",
        icon_size = 1024,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-magic-fluid-processing"
            }, {
                type = "unlock-recipe",
                recipe = "igrys-magic-teseract"
            }
        },
        prerequisites = {
            "igrys-conductive-brick-usage"
        },
        research_trigger ={
            type = "mine-entity",
            entity = "igrys-magic-fluid",
            count = 1
        },
        essential = true,
    }, {
        type = "technology",
        name = "igrys-mineral-science",
        icon = "__Igrys__/Assets/Items/mineral-science-pack.png",
        icon_size = 1024,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-mineral-science-pack"
            }
        },
        prerequisites = {
            "igrys-magic-fluid",
            "igrys-glassworking-2",
        },
        research_trigger ={
            type = "craft-item",
            item = "igrys-magic-teseract",
            count = 1
        },
        essential = true,
    }, {
        type = "technology",
        name = "igrys-production-science",
        icon = "__Igrys__/Assets/Items/conductive-brick.png",
        icon_size = 1024,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-production-science-pack"
            }
        },
        prerequisites = {
            "igrys-conductive-brick-usage",
        },
        unit = {
            count = 500,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1},
                { "metallurgic-science-pack", 1}
            },
            time = 60,
        },
    },{
        type = "technology",
        name = "igrys-steel-plate",
        icon = "__Igrys__/Assets/Items/conductive-brick.png",
        icon_size = 1024,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-steel-plate"
            }
        },
        prerequisites = {
            "planet-discovery-igrys",
        },
        unit = {
            count = 500,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1},
                { "metallurgic-science-pack", 1}
            },
            time = 60,
        },
    }, {
        type = "technology",
        name = "igrys-plastic-bar",
        icon = "__Igrys__/Assets/Items/conductive-brick.png",
        icon_size = 1024,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-plastic-bar"
            }
        },
        prerequisites = {
            "planet-discovery-igrys",
        },
        unit = {
            count = 500,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1},
                { "metallurgic-science-pack", 1}
            },
            time = 60,
        },
    },{
        type = "technology",
        name = "igrys-sulfuric-acid",
        icon = "__Igrys__/Assets/Items/conductive-brick.png",
        icon_size = 1024,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-sulfuric-acid"
            }
        },
        prerequisites = {
            "planet-discovery-igrys",
        },
        unit = {
            count = 500,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1},
                { "metallurgic-science-pack", 1}
            },
            time = 60,
        },
    },{
        type = "technology",
        name = "igrys-rich-magic-teseract",
        icon = "__Igrys__/Assets/Items/Teseract.png",
        icon_size = 1024,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-rich-magic-teseract"
            },{
                type = "unlock-recipe",
                recipe = "igrys-rich-magic-part-1"
            },{
                type = "unlock-recipe",
                recipe = "igrys-rich-magic-part-2"
            },{
                type = "unlock-recipe",
                recipe = "igrys-rich-magic-part-3"
            }
        },
        prerequisites = {
            "igrys-mineral-science",
        },
        unit = {
            count = 250,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1},
                { "metallurgic-science-pack", 1},
                {"igrys-mineral-science-pack", 1}
            },
            time = 60,
        },
    },{
        type = "technology",
        name = "igrys-strong-barrel",
        icon = "__Igrys__/Assets/Items/empty-barrel.png",
        icon_size = 1024,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-strong-barrel"
            },{
                type = "unlock-recipe",
                recipe = "igrys-strong-barrel-filled-magic-fluid"
            },{
                type = "unlock-recipe",
                recipe = "igrys-empty-strong-barrel-filled-magic-fluid"
            }
        },
        prerequisites = {
            "igrys-rich-magic-teseract",
        },
        unit = {
            count = 500,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1},
                { "metallurgic-science-pack", 1},
                {"igrys-mineral-science-pack", 1}
            },
            time = 60,
        }
    },{
        type = "technology",
        name = "igrys-glass-space-rocket",
        icon = data.raw["item"]["rocket-silo"].icon,
        icon_size = data.raw["item"]["rocket-silo"].icon_size,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "igrys-glass-space-rocket"
            },{
                type = "unlock-recipe",
                recipe = "igrys-glass-space-rocket-part"
            }
        },
        prerequisites = {
            "igrys-rich-magic-teseract",
        },
        unit = {
            count = 1000,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "production-science-pack", 1},
                { "metallurgic-science-pack", 1},
                { "igrys-mineral-science-pack", 1}
            },
            time = 60,
        }
    }
})