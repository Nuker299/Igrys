data:extend{
    {
        type = "recipe",
        name = "igrys-electronic-circuit",
        ingredients =
        {
            {type = "item", name = "igrys-glass", amount = 1},
            {type = "item", name = "copper-cable", amount = 5}
        },
        results = {{type="item", name="electronic-circuit", amount=2}},
        enabled = settings.startup["igrys-enable-all"].value,
        allow_productivity = true
    }, {
        type = "recipe",
        name = "igrys-copper-rail",
        enabled = settings.startup["igrys-enable-all"].value,
        ingredients =
        {
            {type = "item", name = "stone", amount = 1},
            {type = "item", name = "stone-brick", amount = 1},
            {type = "item", name = "copper-plate", amount = 1}
        },
        results = {{type="item", name="rail", amount=1}}
    },
}