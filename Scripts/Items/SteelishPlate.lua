data:extend{
    {
        type = "item",
        name = "igrys-steelish-plate",
        icon = "__Igrys__/Assets/Items/steelish-plate.png",
        icon_size = 1024,
        stack_size = 50,
        subgroup = "intermediate-product",
        weight = 1000 * 10
    },
    {
        type = "recipe",
        name = "igrys-steelish-plate",
        enabled = settings.startup["igrys-enable-all"].value,
        allow_productivity = true,
        ingredients = {
            {type="fluid", name="light-oil", amount=10},
            {type="item", name="stone", amount=5}
        },
        results = {
            {type="item", name="igrys-steelish-plate", amount=1},
        },
        main_product = "igrys-steelish-plate",
        energy_required = 10,
        category = "chemistry"
    }
}