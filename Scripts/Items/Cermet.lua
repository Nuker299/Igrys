data:extend{
    {
        type = "item",
        name = "igrys-cermet",
        icon = "__Igrys__/Assets/Items/cermet.png",
        stack_size = 100,
        subgroup = "raw-material",
        weight = 1 * kg,
        spoil_result = "steel-plate",
        spoil_ticks = 60 * 60 * 30
    }, {
        type = "recipe",
        name = "igrys-cermet",
        enabled = settings.startup["igrys-enable-all"].value,
        allow_productivity = true,
        ingredients = {
            {type="fluid", name="light-oil", amount=25},
            {type="item", name="stone-brick", amount=3}
        },
        results = {
            {type="item", name="igrys-cermet", amount=1},
        },
        energy_required = 5,
        category = "chemistry",
        --auto_recycle = false
    },
}