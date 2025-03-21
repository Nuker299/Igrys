data:extend({
    {
        type = "recipe",
        name = "igrys-rich-magic-part-1",
        enabled = settings.startup["igrys-enable-all"].value,
        allow_productivity = true,
        ingredients = {
            {type="item", name="igrys-magic-part-1", amount=1},
            {type="item", name="igrys-glass", amount=10}
        },
        results = {
            {type="item", name="igrys-rich-magic-part-1", amount=1},
        },
        energy_required = 10,
        category = "advanced-crafting"
    }, {
        type = "recipe",
        name = "igrys-rich-magic-part-2",
        enabled = settings.startup["igrys-enable-all"].value,
        allow_productivity = true,
        ingredients = {
            {type="item", name="igrys-magic-part-2", amount=1},
            {type="item", name="igrys-conductive-brick", amount=5}
        },
        results = {
            {type="item", name="igrys-rich-magic-part-2", amount=1},
        },
        energy_required = 10,
        category = "advanced-crafting"
    }, {
        type = "recipe",
        name = "igrys-rich-magic-part-3",
        enabled = settings.startup["igrys-enable-all"].value,
        allow_productivity = true,
        ingredients = {
            {type="item", name="igrys-magic-part-3", amount=1},
            {type="item", name="stone-brick", amount=25}
        },
        results = {
            {type="item", name="igrys-rich-magic-part-3", amount=1},
        },
        energy_required = 10,
        category = "advanced-crafting"
    },
})

PlanetsLib.restrict_to_planet(data.raw["recipe"]["igrys-rich-magic-part-1"], "igrys")
PlanetsLib.restrict_to_planet(data.raw["recipe"]["igrys-rich-magic-part-2"], "igrys")
PlanetsLib.restrict_to_planet(data.raw["recipe"]["igrys-rich-magic-part-3"], "igrys")