require("Scripts.Planet.tiles")

IgrysMapGen = {
    property_expression_names =
    {
        elevation = "igrys_elevation",
    },
    autoplace_settings = {
        ["tile"] = {
            settings = {
                ["igrys-dirt"] = {},
                ["igrys-dirt-2"] = {}
            }
        },
        ["entity"] = {
            settings = {
                ["igrys-stone"] = {},
                ["igrys-light-oil"] = {},
                ["igrys-water"] = {},
                ["igrys-magic-fluid"] = {},

                --["igrys-ruin"] = {},
                ["igrys-rock"] = {}
            }
        },
    }
}