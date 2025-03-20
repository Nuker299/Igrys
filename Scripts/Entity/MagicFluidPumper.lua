data:extend({
    {
        type = "mining-drill",
        name = "igrys-magic-pumpjack",
        icon = "__Igrys__/Assets/Entity/MagicPumpjack.png",
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = "igrys-magic-pumpjack"},
        resource_categories = {"igrys-magic-fluid"},
        max_health = 200,
        corpse = "pumpjack-remnants",
        dying_explosion = "pumpjack-explosion",
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        energy_source =
        {
            type = "electric",
            emissions_per_minute = { pollution = 10 },
            usage_priority = "secondary-input"
        },
        output_fluid_box =
        {
            volume = 1000,
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                {
                    direction = defines.direction.north,
                    position = {0, -1},
                    flow_direction = "output",
                }, {
                    direction = defines.direction.south,
                    position = {0, 1},
                    flow_direction = "output"
                }
            }
        },
        input_fluid_box =
        {
            volume = 1000,
            pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                {
                    direction = defines.direction.west,
                    position = {-1, 0},
                    flow_direction = "input",
                }, {
                    direction = defines.direction.east,
                    position = {1, 0},
                    flow_direction = "input"
                }
            }
        },
        energy_usage = "90kW",
        mining_speed = 1,
        resource_searching_radius = 0.49,
        vector_to_place_result = {0, 0},
        module_slots = 2,
        radius_visualisation_picture =
        {
            filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
            width = 12,
            height = 12
        },
        monitor_visualization_tint = {78, 173, 255},
        base_picture =
        {
            sheet =
            {
                filename = "__Igrys__/Assets/Entity/MagicPumpjack.png",
                size = 1024,
                scale = 0.1,
                frames = 1,
            }
        },
        --graphics_set =
        --{
        --    animation =
        --    {
        --        {
        --            filename = "__Igrys__/Assets/Entity/MagicPumpjack.png",
        --            scale = 0.1,
        --            line_length = 1,
        --            width = 1024,
        --            height = 1024,
        --            frame_count = 1,
        --        },
        --    }
        --},
        open_sound = {filename = "__base__/sound/open-close/pumpjack-open.ogg", volume = 0.5},
        close_sound = {filename = "__base__/sound/open-close/pumpjack-close.ogg", volume = 0.5},
        working_sound =
        {
            sound = {filename = "__base__/sound/pumpjack.ogg", volume = 0.7, audible_distance_modifier = 0.6},
            max_sounds_per_prototype = 3,
            fade_in_ticks = 4,
            fade_out_ticks = 10
        },
        fast_replaceable_group = "pumpjack",

        circuit_connector = circuit_connector_definitions["pumpjack"],
        circuit_wire_max_distance = default_circuit_wire_max_distance
    }, {
        type = "item",
        name = "igrys-magic-pumpjack",
        icon = "__Igrys__/Assets/Entity/MagicPumpjack.png",
        icon_size = 1024,

        subgroup = "extraction-machine",

        weight = 1000000000,
        stack_size = 50,
        place_result = "igrys-magic-pumpjack"
    },
})
local restrictedRecipe =
{
    type = "recipe",
    name = "igrys-magic-pumpjack",
    icon = "__Igrys__/Assets/Entity/MagicPumpjack.png",
    icon_size = 1024,
    enabled = settings.startup["igrys-enable-all"].value,
    ingredients = {
        {type="item", name="igrys-glass", amount=20},
        {type="item", name="steel-plate", amount=50},
        {type="item", name="igrys-conductive-brick", amount=10},
    },
    results = {
        {type="item", name="igrys-magic-pumpjack", amount=1},
    },
    energy_required = 30,
    category = "advanced-crafting",
    subgroup = "extraction-machine",
}

data:extend{restrictedRecipe}
PlanetsLib.restrict_to_planet(restrictedRecipe, "igrys")