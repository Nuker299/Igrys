require("Scripts.Other.Icons")

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
        allow_productivity = true,
        energy_required = 3,
        recipe_category = "advanced-crafting",
        allow_as_intermediate = false
    }, {
        type = "recipe",
        name = "igrys-copper-rail",
        enabled = settings.startup["igrys-enable-all"].value,
        ingredients =
        {
            {type = "item", name = "stone", amount = 1},
            {type = "item", name = "igrys-conductive-brick", amount = 1},
            {type = "item", name = "steel-plate", amount = 1}
        },
        results = {{type="item", name="rail", amount=1}},
        order = "a[rail]-b[igrys-copper-rail]",
        recipe_category = "advanced-crafting",
        allow_as_intermediate = false
    }, {
        type = "recipe",
        name = "igrys-sulfuric-acid",
        enabled = settings.startup["igrys-enable-all"].value,
        category = "chemistry",
        subgroup = "fluid-recipes",
        energy_required = 1,
        ingredients =
        {
            {type = "item", name = "igrys-conductive-brick", amount = 5},
            {type = "fluid", name = "water", amount = 100},
            {type = "fluid", name = "light-oil", amount = 100}
        },
        results =
        {
            {type = "fluid", name = "sulfuric-acid", amount = 50}
        },
        allow_productivity = true,
        allow_as_intermediate = false
    }, {
        type = "recipe",
        name = "igrys-plastic-bar",
        category = "chemistry",
        energy_required = 1,
        enabled = settings.startup["igrys-enable-all"].value,
        auto_recycle = false,
        ingredients =
        {
            {type = "fluid", name = "light-oil", amount = 30},
            {type = "item", name = "igrys-glass", amount = 1}
        },
        results =
        {
            {type = "item", name = "plastic-bar", amount = 1}
        },
        allow_productivity = true,
        allow_as_intermediate = false
    },
    {
        type = "recipe",
        name = "igrys-steel-plate",
        enabled = settings.startup["igrys-enable-all"].value,
        allow_productivity = true,
        ingredients = {
            {type="fluid", name="light-oil", amount=20},
            {type="item", name="stone-brick", amount=5}
        },
        results = {
            {type="item", name="steel-plate", amount=1},
        },
        energy_required = 5,
        category = "chemistry",
        allow_as_intermediate = false
    },
}