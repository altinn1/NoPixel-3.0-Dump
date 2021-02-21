-- prop_fruitstand_b, 1045.173, 696.9411, 157.8391
fruitStandLocations = {
    vector3(1045.173, 696.9411, 157.8391),
    vector3(-1380.767, 734.5928, 181.9658),
    vector3(2527.412, 2038.055, 18.80867),
    vector3(1088.167, 6510.437, 20.07833),
    vector3(-1043.469, 5326.102, 43.6015),
    vector3(2474.29, 4445.75, 34.38753),
    vector3(1263.157, 3547.175, 34.14659),
    vector3(1476.846, 2723.044, 36.64265),
    vector3(149.0806, 1669.901, 227.6887),
    vector3(-2510.075, 3615.438, 12.65181),
    vector3(-458.8947, 2863.294, 34.10668)
}

distilleryLocations = {
    -- vector3(125.75, -1181.69, 30.31)
    -- vector3(1443.14, 3752.34, 30.94)
    vector3(1225.63, -420.6, 66.51)
}


batchRequirements = {
    ["fruit"] = {
        count = 1, -- 50,
        validIngredients = {
            "apple",
            "banana",
            "cherry",
            "coconut",
            "grain",
            "grapes",
            "kiwi",
            "lemon",
            "lime",
            "orange",
            "peach",
            "potato",
            "strawberry",
            "watermelon"
        }
    },
    ["water"] = {
        count = 1, -- 50,
        validIngredient = "water"
    },
    ["potato"] = {
        count = 1, -- 25,
        validIngredient = "potato"
    },
    ["grain"] = {
        count = 1, -- 25,
        validIngredient = "grain"
    }
}

stages = {
    [0] = {name = "Awaiting mash", timeToProcess = 0},
    [1] = {name = "Fermenting", timeToProcess = 3600, maximumOverdue = math.random(300, 900)},
    [2] = {name = "Brewing", timeToProcess = 2400, maximumOverdue = math.random(300, 900)},
    [3] = {name = "Distilling", timeToProcess = 2100, maximumOverdue = math.random(60, 300)},
    [4] = {name = "Bottling", timeToProcess = 300}
}

distilleryProp = `prop_still`

function tablelength(pTable)
    local count = 0
    for _ in pairs(pTable) do count = count + 1 end
    return count
end

