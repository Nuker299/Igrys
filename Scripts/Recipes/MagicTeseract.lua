data:extend({
    {
        type = "recipe",
        name = "igrys-magic-teseract-1",
        category = "advanced-crafting",
        subgroup = "igrys-magic",
        enabled = settings.startup["igrys-enable-all"].value,
        energy_required = 10,
        ingredients = {
            {type = "item", name = "igrys-rich-magic-part-1", amount = 5},
            {type = "item", name = "igrys-magic-part-2", amount = 5},
            {type = "item", name = "igrys-magic-part-3", amount = 5}
        },
        results = {
            {type = "item", name = "igrys-magic-teseract", amount = 1},
        },
        main_product = "igrys-magic-teseract",
    },{
        type = "recipe",
        name = "igrys-magic-teseract-2",
        category = "advanced-crafting",
        subgroup = "igrys-magic",
        enabled = settings.startup["igrys-enable-all"].value,
        energy_required = 10,
        ingredients = {
            {type = "item", name = "igrys-magic-part-1", amount = 5},
            {type = "item", name = "igrys-rich-magic-part-2", amount = 5},
            {type = "item", name = "igrys-magic-part-3", amount = 5}
        },
        results = {
            {type = "item", name = "igrys-magic-teseract", amount = 1},
        },
        main_product = "igrys-magic-teseract",
    },{
        type = "recipe",
        name = "igrys-magic-teseract-3",
        category = "advanced-crafting",
        subgroup = "igrys-magic",
        enabled = settings.startup["igrys-enable-all"].value,
        energy_required = 10,
        ingredients = {
            {type = "item", name = "igrys-magic-part-1", amount = 5},
            {type = "item", name = "igrys-magic-part-2", amount = 5},
            {type = "item", name = "igrys-rich-magic-part-3", amount = 5}
        },
        results = {
            {type = "item", name = "igrys-magic-teseract", amount = 1},
        },
        main_product = "igrys-magic-teseract",
    },{
        type = "recipe",
        name = "igrys-rich-magic-teseract",
        category = "advanced-crafting",
        subgroup = "igrys-magic",
        enabled = settings.startup["igrys-enable-all"].value,
        energy_required = 10,
        ingredients = {
            {type = "item", name = "igrys-rich-magic-part-1", amount = 5},
            {type = "item", name = "igrys-rich-magic-part-2", amount = 5},
            {type = "item", name = "igrys-rich-magic-part-3", amount = 5}
        },
        results = {
            {type = "item", name = "igrys-rich-magic-teseract", amount = 1},
        },
    }
})

PlanetsLib.restrict_to_planet(data.raw["recipe"]["igrys-rich-magic-teseract"], "igrys")