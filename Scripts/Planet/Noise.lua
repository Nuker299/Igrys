data:extend({
    {
        type = "noise-expression",
        name = "igrys_neutral",
        expression = [[multioctave_noise{
                x = x,
                y = y,
                persistence = 0.5,
                seed0 = map_seed,
                seed1 = 5116,
                octaves = 6,
                input_scale = 1/32,
                output_scale = 1
            }]]
    }, {
        type = "noise-expression",
        name = "noise_igrys_dirt",
        expression = "igrys_neutral"
    }, {
        type = "noise-expression",
        name = "noise_igrys_biomes",
        --parameters = {"seed1"},
        expression = [[multioctave_noise{
                x = x,
                y = y,
                persistence = 0.5,
                seed0 = map_seed,
                seed1 = 112,
                octaves = 6,
                input_scale = 1/12,
                output_scale = 1
            }]]
    }, 
    --{
    --    type = "noise-expression",
    --    name = "noise_igrys_biome_1_raw",
    --    expression = "noise_biome_noise{seed1 = 1}"
    --}, {
    --    type = "noise-expression",
    --    name = "noise_igrys_biome_2_raw",
    --    expression = "noise_biome_noise{seed1 = 2}"
    --}, 
    --{
    --    type = "noise-expression",
    --    name = "noise_igrys_biome_3_raw",
    --    expression = "noise_biome_noise{seed1 = 3}"
    --}, 
        {
        type = "noise-expression",
        name = "noise_igrys_biome_1",
        expression = "noise_igrys_biomes * -1 * (igrys_neutral < 0)"
    }, {
        type = "noise-expression",
        name = "noise_igrys_biome_2",
        expression = "noise_igrys_biomes * (igrys_neutral < 0)"
    }, 
    -- {
    --    type = "noise-expression",
    --    name = "noise_igrys_biome_3",
    --    expression = "noise_igrys_biome_3_raw - max(noise_igrys_biome_1_raw, noise_igrys_biome_2_raw)"
    --}
    --{
    --    type = "noise-expression",
    --    name = "vulcanus_sulfuric_acid_region",
    --    -- -1 to 1: needs a positive region for resources & decoratives plus a subzero baseline and skirt for surrounding decoratives.
    --    expression = [[min(1 - vulcanus_starting_circle,
    --                      vulcanus_place_sulfur_spots(759, 9, 0,
    --                          vulcanus_sulfuric_acid_geyser_size * min(1.2, vulcanus_ore_dist) * 25,
    --                          control:sulfuric_acid_geyser:frequency,
    --                          vulcanus_mountains_sulfur_favorability)))]]
    --},
    --{
    --    type = "noise-function",
    --    name = "igrys-patch",
    --    parameters = {"seed1"},
    --    expression = "0.8 * abs(multioctave_noise{x = x, y = y, persistence = 0.7, seed0 = map_seed, seed1 = seed1, octaves = 2, input_scale = 1/3})"
    --},
    --{
    --    type = "noise-expression",
    --    name = "vulcanus_sulfuric_acid_region_patchy",
    --    expression = "(1 + vulcanus_sulfuric_acid_region) * (0.5 + 0.5 * vulcanus_sulfuric_acid_patches) - 1"
    --},
    --{
    --    type = "noise-expression",
    --    name = "vulcanus_sulfuric_acid_geyser_probability",
    --    expression = "(control:sulfuric_acid_geyser:size > 0) * (0.025 * ((vulcanus_sulfuric_acid_region_patchy > 0) + 2 * vulcanus_sulfuric_acid_region_patchy))"
    --},
    --{
    --    type = "noise-expression",
    --    name = "vulcanus_sulfuric_acid_geyser_richness",
    --    expression = "(vulcanus_sulfuric_acid_region > 0) * random_penalty_between(0.5, 1, 1)\z
    --              * 80000 * 40 * vulcanus_richness_multiplier * vulcanus_starting_area_multiplier\z
    --              * control:sulfuric_acid_geyser:richness / vulcanus_sulfuric_acid_geyser_size"
    --},
})