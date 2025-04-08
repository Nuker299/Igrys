local darknessThreshold = 0.4

script.on_init(function()
    storage.on = true
end)

function OnEntityBuild (event)
    event.entity.active = storage.on
end

script.on_event(defines.events.on_built_entity, OnEntityBuild,
        {{filter = "name", name = "igrys-copper-plate-machine"}})
script.on_event(defines.events.on_robot_built_entity, OnEntityBuild,
        {{filter = "name", name = "igrys-copper-plate-machine"}})

function Turn(on)
    storage.on = on
    --game.print("Turning " .. tostring(on) .. " copper plate machines")
    local igrysSurface = game.surfaces["igrys"]
    for _, machine in ipairs(igrysSurface.find_entities_filtered{name = "igrys-copper-plate-machine"}) do
        machine.active = on
    end
end

script.on_nth_tick(60 * 5, function()
    local igrysSurface = game.surfaces["igrys"]
    if not igrysSurface then
        return
    end
    --game.print("Checking darkness = " .. igrysSurface.darkness)
    if storage.on then
        if igrysSurface.darkness < darknessThreshold then
            Turn(false)
        end
    else
        if igrysSurface.darkness > darknessThreshold then
            Turn(true)
        end
    end
end)