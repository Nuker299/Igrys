
    local recipeCategory = {
        name = "enriched-science-pack",
        type = "recipe-category"
    }

    data:extend{recipeCategory}

    local scienceEnhancerMachine = table.deepcopy(data.raw["assembling-machine"]["electromagnetic-plant"])

    scienceEnhancerMachine.name = "science-enhancer-machine"
    scienceEnhancerMachine.crafting_categories = {"enriched-science-pack"}
    scienceEnhancerMachine.crafting_speed = 5
    scienceEnhancerMachine.effect_receiver = {
        base_effect = {
            productivity = 2
        }
    }
    scienceEnhancerMachine.minable.result = "science-enhancer-machine"

    local scienceEnhancerMachineItem = table.deepcopy(data.raw["item"]["electromagnetic-plant"])
    scienceEnhancerMachineItem.name = "science-enhancer-machine"
    scienceEnhancerMachineItem.place_result = "science-enhancer-machine"

    local scienceEnhancerMachineRecipe = {
        type = "recipe",
        name = "science-enhancer-machine",
        enabled = true,
        ingredients =
        {
            {type="item", name="electronic-circuit", amount=25},
            {type="item", name="electric-engine-unit", amount=10},
            {type="item", name="lab", amount=2}
        },
        results=
        {
            {type="item", name="science-enhancer-machine", amount=1},
        },
    }

    data:extend{scienceEnhancerMachine, scienceEnhancerMachineItem, scienceEnhancerMachineRecipe}
