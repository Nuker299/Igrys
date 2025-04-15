local tile_pollution = require("__space-age__/prototypes/tile/tile-pollution-values")
local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")

function notDirtCollisionMask()
    local mask = tile_collision_masks.ground()
    mask.layers["igrys_not_dirt"] = true
    return mask
end

data:extend({
    {
        type = "tile",
        name = "igrys-dirt",
        --subgroup = "vulcanus-tiles",
        --order = "a-d",
        autoplace =
        {
            probability_expression = "0 <= noise_igrys_dirt & noise_igrys_dirt < 0.5",
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
        map_color={141, 104, 60},
    }, {
        type = "tile",
        name = "igrys-dirt-2",
        --subgroup = "vulcanus-tiles",
        --order = "a-d",
        autoplace =
        {
            probability_expression = "noise_igrys_dirt >= 0.5",
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
    }, {
        type = "tile",
        name = "igrys-biome-1",
        --subgroup = "vulcanus-tiles",
        --order = "a-d",
        autoplace =
        {
            probability_expression = "noise_igrys_biome_1",
        },
        collision_mask = notDirtCollisionMask(),
        layer = 3,
        --sprite_usage_surface = "vulcanus",
        variants = tile_variations_template(
                "__space-age__/graphics/terrain/gleba/lowland-red-vein-3.png",
                "__base__/graphics/terrain/masks/transition-1.png",
                {
                    max_size = 4,
                    [1] = { weights = {0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045 } },
                    [2] = { probability = 1, weights = {0.070, 0.070, 0.025, 0.070, 0.070, 0.070, 0.007, 0.025, 0.070, 0.050, 0.015, 0.026, 0.030, 0.005, 0.070, 0.027 } },
                    [4] = { probability = 1.00, weights = {0.070, 0.070, 0.070, 0.070, 0.070, 0.070, 0.015, 0.070, 0.070, 0.070, 0.015, 0.050, 0.070, 0.070, 0.065, 0.070 }, },
                    --[8] = { probability = 1.00, weights = {0.090, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.025, 0.125, 0.005, 0.010, 0.100, 0.100, 0.010, 0.020, 0.020} }
                }
        ),
        absorptions_per_second = tile_pollution.lava,
        map_color={115, 53, 66},
    }, {
        type = "tile",
        name = "igrys-biome-2",
        --subgroup = "vulcanus-tiles",
        --order = "a-d",
        autoplace =
        {
            probability_expression = "noise_igrys_biome_2",
        },
        collision_mask = notDirtCollisionMask(),
        layer = 3,
        --sprite_usage_surface = "vulcanus",
        variants = tile_variations_template(
                "__space-age__/graphics/terrain/gleba/highland-yellow-rock.png",
                "__base__/graphics/terrain/masks/transition-1.png",
                {
                    max_size = 4,
                    [1] = { weights = {0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045 } },
                    [2] = { probability = 1, weights = {0.018, 0.020, 0.015, 0.025, 0.015, 0.020, 0.025, 0.015, 0.025, 0.025, 0.010, 0.025, 0.020, 0.025, 0.025, 0.010 }, },
                    [4] = { probability = 0.1, weights = {0.018, 0.020, 0.015, 0.025, 0.015, 0.020, 0.025, 0.015, 0.025, 0.025, 0.010, 0.025, 0.020, 0.025, 0.025, 0.010 }, },
                    --[8] = { probability = 1.00, weights = {0.090, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.025, 0.125, 0.005, 0.010, 0.100, 0.100, 0.010, 0.020, 0.020} },
                }
        ),
        absorptions_per_second = tile_pollution.lava,
        map_color={52, 55, 48},
    }
})