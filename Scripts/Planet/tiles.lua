local tile_pollution = require("__space-age__/prototypes/tile/tile-pollution-values")
local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")

data:extend({
    
    -- Noise
    
    {
        type = "noise-expression",
        name = "igrys_elevation",
        expression = "100 - distance"
    }, {
        type = "noise-expression",
        name = "igrys_dirt",
        expression = "-1"
    },{
        type = "noise-expression",
        name = "igrys_dirt-2",
        expression = "1"
    },
    
    -- Tiles
    
    {
        type = "tile",
        name = "igrys-dirt",
        subgroup = "vulcanus-tiles",
        order = "a-d",
        autoplace =
        {
            probability_expression = "igrys_dirt"
        },
        collision_mask = tile_collision_masks.ground(),
        layer = 3,
        variants = tile_variations_template(
                "__base__/graphics/terrain/dirt-1.png", "__base__/graphics/terrain/masks/transition-1.png",
                {
                    max_size = 4,
                    [1] = { weights = {0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045 } },
                    [2] = { probability = 1, weights = {0.070, 0.070, 0.025, 0.070, 0.070, 0.070, 0.007, 0.025, 0.070, 0.050, 0.015, 0.026, 0.030, 0.005, 0.070, 0.027 } },
                    [4] = { probability = 1.00, weights = {0.070, 0.070, 0.070, 0.070, 0.070, 0.070, 0.015, 0.070, 0.070, 0.070, 0.015, 0.050, 0.070, 0.070, 0.065, 0.070 }, },
                    --[8] = { probability = 1.00, weights = {0.090, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.025, 0.125, 0.005, 0.010, 0.100, 0.100, 0.010, 0.020, 0.020} }
                }
        ),
        absorptions_per_second = tile_pollution.lava,
        map_color = {r = 150, g = 49, b = 30}
    }, {
        type = "tile",
        name = "igrys-dirt-2",
        subgroup = "vulcanus-tiles",
        order = "a-d",
        autoplace =
        {
            probability_expression = "igrys_dirt-2"
        },
        collision_mask = tile_collision_masks.ground(),
        layer = 3,
        --sprite_usage_surface = "vulcanus",
        variants = tile_variations_template(
                "__base__/graphics/terrain/dirt-2.png", "__base__/graphics/terrain/masks/transition-1.png",
                {
                    max_size = 4,
                    [1] = { weights = {0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045 } },
                    [2] = { probability = 1, weights = {0.070, 0.070, 0.025, 0.070, 0.070, 0.070, 0.007, 0.025, 0.070, 0.050, 0.015, 0.026, 0.030, 0.005, 0.070, 0.027 } },
                    [4] = { probability = 1.00, weights = {0.070, 0.070, 0.070, 0.070, 0.070, 0.070, 0.015, 0.070, 0.070, 0.070, 0.015, 0.050, 0.070, 0.070, 0.065, 0.070 }, },
                    --[8] = { probability = 1.00, weights = {0.090, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.025, 0.125, 0.005, 0.010, 0.100, 0.100, 0.010, 0.020, 0.020} }
                }
        ),
        absorptions_per_second = tile_pollution.lava,
        map_color={136, 96, 59},
    }
})