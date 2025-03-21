local items = data.raw["tool"]
local sciencePacks = {} -- This will be a list (array)

-- Collect all science pack names into a list
for name, item in pairs(items) do
    if item.subgroup == "science-pack" then
        table.insert(sciencePacks, item) -- Store the full item object
    end
end

-- Iterate through each science pack
for _, sciencePack in ipairs(sciencePacks) do
    -- Ensure that the recipe exists for this science pack
    local recipe = data.raw["recipe"][sciencePack.name]
    if recipe then
        -- Create a copy of the existing recipe
        local newRecipe = table.deepcopy(recipe)

        -- Modify the new recipe name to include "-enriched"
        newRecipe.name = sciencePack.name .. "-enriched"
        newRecipe.category = "enriched-science-pack"
        newRecipe.enabled = true

        table.insert(newRecipe.ingredients, {type = "fluid", name = "igrys-magic-fluid", amount = 5})

        --newRecipe.localized_name = {"recipe-name.enriched-science-pack", "item-name." .. sciencePack.name}

        -- Register the new recipe
        data:extend{newRecipe}
        log("New enriched recipe added for " .. sciencePack.name)
    else
        -- Log if no recipe was found for this science pack
        log("Warning: Recipe for " .. sciencePack.name .. " not found!")
    end
end


