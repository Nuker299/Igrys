data:extend({
    {
        type = "recipe",
        name = "magic-fluid-processing",
        category = "chemistry",
        subgroup = "igrys-magic",
        enabled = settings.startup["igrys-enable-all"].value,
        energy_required = 1,
        ingredients = {
            {type = "fluid", name = "igrys-magic-fluid", amount = 10},
            {type = "item", name = "steel-plate", amount = 1},
        },
        results = {
            {type = "item", name = "igrys-magic-part-1", amount = 1},
            {type = "item", name = "igrys-magic-part-2", amount = 1},
            {type = "item", name = "igrys-magic-part-3", amount = 1}
        },
        main_product = "igrys-magic-part-1",
        icon = "__Igrys__/Assets/Fluids/magic-fluid.png",
        icon_size = 1024,
        order = "a[magic-fluid-processing]"
    }, {
        type = "item-subgroup",
        name = "igrys-magic",
        group = "intermediate-products",
        order = "m"
    }
})