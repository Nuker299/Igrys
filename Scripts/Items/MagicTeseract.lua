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
    }
})