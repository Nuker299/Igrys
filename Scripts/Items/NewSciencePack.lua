data:extend{
    {
        type = "tool",
        name = "igrys-mineral-science-pack",
        icon = "__Igrys__/Assets/Items/mineral-science-pack.png",
        icon_size = 1024,
        subgroup = "science-pack",
        order = "i[igrys-mineral-science-pack]",
        stack_size = 200,
        weight = 1 * kg,
        durability = 1,
    }, {
        type = "recipe",
        name = "igrys-mineral-science-pack",
        enabled = settings.startup["igrys-enable-all"].value,
        energy_required = 1,
        ingredients = {
            {type = "item", name = "automation-science-pack", amount = 5},
            {type = "item", name = "production-science-pack", amount = 1},
            {type = "item", name = "igrys-glass", amount = 1},
        },
        results = {
            {type = "item", name = "igrys-mineral-science-pack", amount = 5},
        },
        subgroup = "science-pack",
        order = "i[igrys-mineral-science-pack]",
        allow_productivity = true
    },
}