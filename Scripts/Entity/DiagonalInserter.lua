local recipe = data.raw["recipe"]["diagonal-inserter"]
recipe.ingredients = {
  {type="item", name="igrys-conductive-brick", amount=3}, 
  {type="item", name="fast-inserter", amount=2},
  {type="item", name="igrys-cermite", amount=1}
}

local entity = data.raw["inserter"]["diagonal-inserter"]
entity.extension_speed = 0.1
entity.rotation_speed = 0.04

local tech = data.raw["technology"]["fast-inserter"]
for i, effect in ipairs(tech.effects) do
    if effect.recipe then
        if effect.recipe == "diagonal-inserter" then
            table.remove(tech.effects, i)
            break
        end
    end
end

local item = data.raw["item"]["diagonal-inserter"]
item.order = "da[fast-inserter]"