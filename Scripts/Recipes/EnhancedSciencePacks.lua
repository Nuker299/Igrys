local items = data.raw["tool"]
local sciencePacks = {} -- This will be a list (array)

-- Collect all science pack names into a list
for name, item in pairs(items) do
    if item.subgroup == "science-pack" then
        if (item.auto_enrich == false) then
            log("Auto enrich false for " .. item.name)
        else
            table.insert(sciencePacks, item) -- Store the full item object
        end
    end
end

-- Iterate through each science pack
for _, sciencePack in ipairs(sciencePacks) do
    -- Ensure that the recipe exists for this science pack
    local recipe = data.raw["recipe"][sciencePack.name]
    if recipe then
        -- Create a copy of the existing recipe
        local newRecipe = table.deepcopy(recipe)
        
        newRecipe.name = "igrys-" .. sciencePack.name .. "-enhanced"
        newRecipe.category = "enriched-science-pack"
        newRecipe.enabled = settings.startup["igrys-enable-all"].value
        newRecipe.icons = RichIcons({icon = sciencePack.icon})
        newRecipe.subgroup = "igrys-enriched-science-pack"
        newRecipe.auto_recycle = false
        newRecipe.hidden_in_factoriopedia = true
        
        local newTech = {
            type = "technology",
            name = "igrys-" .. sciencePack.name .. "-enhanced",
            icon = "__Igrys__/Assets/Entity/ScienceEnhancerMachine.png",
            icon_size = 600,
            hidden = true,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "igrys-" .. sciencePack.name .. "-enhanced"
                }
            },
            prerequisites = {
                "igrys-science-enriching",
            },research_trigger ={
                type = "craft-item",
                item = sciencePack.name,
                count = 1
            },
        }

        table.insert(newRecipe.ingredients, {type = "fluid", name = "igrys-magic-fluid", amount = 5})

        --newRecipe.localized_name = {"recipe-name.enriched-science-pack", "item-name." .. sciencePack.name}

        -- Register the new recipe
        data:extend{newRecipe, newTech}
        log("New enriched recipe added for " .. sciencePack.name)
    else
        -- Log if no recipe was found for this science pack
        log("Warning: Recipe for " .. sciencePack.name .. " not found!")
    end
end


