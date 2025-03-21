require("Scripts.Other.Icons")

data:extend({
    {
        type="item",
        name="igrys-magic-teseract",
        icon = "__Igrys__/Assets/Items/Teseract.png",
        icon_size = 1024,
        stack_size = 10,
        subgroup = "igrys-magic",
        weight = 1000 * 100,
        order = "c[igrys-magic-teseract]"
    }, {
        type = "recipe",
        name = "igrys-magic-teseract",
        category = "advanced-crafting",
        subgroup = "igrys-magic",
        enabled = settings.startup["igrys-enable-all"].value,
        energy_required = 10,
        ingredients = {
            {type = "item", name = "igrys-magic-part-1", amount = 5},
            {type = "item", name = "igrys-magic-part-2", amount = 5},
            {type = "item", name = "igrys-magic-part-3", amount = 5}
        },
        results = {
            {type = "item", name = "igrys-magic-teseract", amount = 1},
        },
        main_product = "igrys-magic-teseract",
    }, {
        type="item",
        name="igrys-rich-magic-teseract",
        icons = RichIcons({
            icon = "__Igrys__/Assets/Items/Teseract.png",
            icon_size = 1024,
        }),
        stack_size = 10,
        subgroup = "igrys-magic",
        weight = 1000 * 100,
        order = "e[igrys-magic-teseract]"
    }, {
        type = "recipe",
        name = "igrys-rich-magic-teseract",
        category = "advanced-crafting",
        subgroup = "igrys-magic",
        enabled = settings.startup["igrys-enable-all"].value,
        energy_required = 10,
        ingredients = {
            {type = "item", name = "igrys-rich-magic-part-1", amount = 2},
            {type = "item", name = "igrys-rich-magic-part-2", amount = 2},
            {type = "item", name = "igrys-rich-magic-part-3", amount = 2}
        },
        results = {
            {type = "item", name = "igrys-rich-magic-teseract", amount = 1},
        },
    }
})

PlanetsLib.restrict_to_planet(data.raw["recipe"]["igrys-magic-teseract"], "igrys")
PlanetsLib.restrict_to_planet(data.raw["recipe"]["igrys-rich-magic-teseract"], "igrys")