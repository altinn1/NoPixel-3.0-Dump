Housing = {}
Housing.func = {}

Housing.ranges = {
    ["editRange"] = 30,
    ["garageEnterRange"] = 4.5,
    ["doorEnterRange"] = 2.5,
    ["minOrigin"] = -100,
    ["maxOrigin"] = 100,
    ["percentageGivenBackToState"] = 50,
    ["percentageGivenBackToPlayer"] = 50,
    ["incrementForStackingProperty"] = 0.05,
}

Housing.max = {
    ["office"] = {
        ["propertyAmount"] = 1,
        ["propertykeyAmount"] = 1,
        ["canHaveInventory"] = false,
        ["canHaveBackDoor"] = false,
        ["canHaveGarage"] = false,
        ["canHaveCharSelect"] = false,
        ["canHaveFurniture"] = true,
        ["canHaveCrafting"] = false,
        ["personalKeyAmount"] = 1,
    },
    ["housing"] = {
        ["propertyAmount"] = 1,
        ["propertykeyAmount"] = 1, 
        ["canHaveInventory"] = true,
        ["canHaveBackDoor"] = true,
        ["canHaveGarage"] = true,
        ["canHaveCharSelect"] = true,
        ["canHaveFurniture"] = true,
        ["canHaveCrafting"] = true,
        ["personalKeyAmount"] = 1,
    },
    ["warehouse"] = {
        ["propertyAmount"] = 1,
        ["propertykeyAmount"] = 3, -- 3 personal keys , does not inlcude owner
        ["canHaveInventory"] = true,
        ["canHaveBackDoor"] = false,
        ["canHaveGarage"] = false,
        ["canHaveCharSelect"] = false,
        ["canHaveFurniture"] = false,
        ["canHaveCrafting"] = false,
        ["personalKeyAmount"] = 1, -- how many of a given type a single person can have accesses to 
    },

    ["buisness"] = {
        ["propertyAmount"] = 1,
        ["propertykeyAmount"] = 0,
        ["canHaveInventory"] = false,
        ["canHaveBackDoor"] = false,
        ["canHaveGarage"] = false,
        ["canHaveCharSelect"] = false,
        ["canHaveFurniture"] = false,
        ["canHaveCrafting"] = false,
        ["personalKeyAmount"] = 1,
    },
}

Housing.interactionlist = {
    [1] = {
        ["name"] = "inventory_offset",
        ["event"] = {
            ["generalUse"] = {"",""},
            ["housingMain"] = {"to interact.","housing:inventory"},
            ["housingSecondary"] = {"",""}, 
        }
    },
    [2] = {
        ["name"] = "charChanger_offset",
        ["event"] = {
            ["generalUse"] = {"",""},
            ["housingMain"] = {"",""},
            ["housingSecondary"] = {"to swap char or /outfits.","housing:charLogout"},
        }
    },
    [3] = {
        ["name"] = "backdoor_offset_internal",
        ["event"] = {
            ["generalUse"] = {"",""},
            ["housingMain"] = {"to exit","housing:internalBackdoor"},
            ["housingSecondary"] = {"",""},
        }
    },
    [4] = {
        ["name"] = "internal_exit",
        ["event"] = {
            ["generalUse"] = {"",""},
            ["housingMain"] = {"to exit","housing:exitFrontDoor"},
            ["housingSecondary"] = {"",""},
        }
    },
    [5] = {
        ["name"] = "crafting_offset",
        ["event"] = {
            ["generalUse"] = {"",""},
            ["housingMain"] = {"to craft.","housing:crafting"},
            ["housingSecondary"] = {"",""},
        }
    }
}

Housing.typeInfo = {
    ["shop"] = {
        ["cat"] = "office", 
        ["percentage"] = 0 
    },
    ["ex_int_office_03b_dlc"] = {
        ["cat"] = "office", 
        ["percentage"] = 0 
    },
    ["trailer"] = {
        ["cat"] = "housing", 
        ["percentage"] = 0,
    },
    ["v_int_16_low"] = {
        ["cat"] = "housing", 
        ["percentage"] = 0,
    },
    ["v_int_16_mid_empty"] = {
        ["cat"] = "housing", 
        ["percentage"] = 0,
        ["robberyCounterpart"] = "v_int_16_mid",
        ["exitOffset"] = vector3(3.76,-15.69,0.98),
    },
    ["v_int_24"] = {
        ["cat"] = "housing", 
        ["percentage"] = 0,
        ["robberyCounterpart"] = "v_int_24_full",
        ["exitOffset"] = vector3(8.05,6.18,6.41),
    }, 
    ["v_int_44_empty"] = {
        ["cat"] = "housing", 
        ["percentage"] = 0,
        ["robberyCounterpart"] = "v_int_44",
        ["exitOffset"] = vector3(-6.81,6.2,1.01),  
    },
    ["v_int_49_empty"] = {
        ["cat"] = "housing", 
        ["percentage"] = 0,
        ["robberyCounterpart"] = "v_int_49",
        ["exitOffset"] = vector3(-0.9,-3.54,1.01),  
    },
    ["v_int_61"] = {
        ["cat"] = "housing", 
        ["percentage"] = 0,
    },
    ["ghost_stash_houses_01"] = {
        ["cat"] = "warehouse", 
        ["percentage"] = 0,
    },
    ["v_int_16_high"] = {
        ["cat"] = "housing",
        ["percentage"] = 0,
    },

    ["buisness_high"] = {
        ["cat"] = "buisness",
        ["percentage"] = 0,
    },
}

--[[
    Pricing is done as follows 

    Base price for selling given for all zones 

    Each type of building is given a % that it will increase price based on ZoningPercentages be it + or -

    Should a certain type of housing in a certain zone want to adjust the precentage then adding that type of housing into a zone list will add that percentage be it + or -
]]
Housing.zoningPrices = {
    ["golf"] = {
        ["baseSellPrice"] = 1200000,
        ["ownedInZonePercent"] = 15, 
        ["ex_int_office_03b_dlc"] = -72,
        ["v_int_16_low"] = -81,   
    },
    ["ROCKF"] = {
        ["baseSellPrice"] = 1200000,
        ["ownedInZonePercent"] = 10, 
        ["ex_int_office_03b_dlc"] = -72,
        ["v_int_16_low"] = -81,
        ["v_int_16_mid_empty"] = -87,   
    },
    ["DELSOL"] = {
        ["baseSellPrice"] = 490000,
        ["ownedInZonePercent"] = 5,
        ["v_int_49_empty"] = 15,
        ["v_int_16_mid_empty"] = -52,
    },
    ["PBOX"] = {
        ["baseSellPrice"] = 320000,
        ["ownedInZonePercent"] = 8,  
    },
    ["DESRT"] = {
        ["baseSellPrice"] = 80000,
        ["ownedInZonePercent"] = 10, 
    },
    ["SKID"] = {
        ["baseSellPrice"] = 320000,
        ["ownedInZonePercent"] = 5, 
    },
    ["CHIL"] = {
        ["baseSellPrice"] = 1200000,
        ["ownedInZonePercent"] = 12,
        ["ex_int_office_03b_dlc"] = -72,
        ["v_int_16_low"] = -81,    
    },
    ["KOREAT"] = {
        ["baseSellPrice"] = 350000,
        ["ownedInZonePercent"] = 10,
        ["v_int_49_empty"] = -30,  
    },
    ["EAST_V"] = {
        ["baseSellPrice"] = 480000,
        ["ownedInZonePercent"] = 10,
        ["v_int_49_empty"] = 15,
        ["v_int_16_mid_empty"] = -52,  
    },
    ["TERMINA"] = {
        ["baseSellPrice"] = 320000,
        ["ownedInZonePercent"] = 5,  
    },
    ["PBLUFF"] = {
        ["baseSellPrice"] = 1200000,
        ["ownedInZonePercent"] = 2,
        ["ex_int_office_03b_dlc"] = -72,
        ["v_int_16_low"] = -81,     
    },
    ["DTVINE"] = {
        ["baseSellPrice"] = 1200000,
        ["ownedInZonePercent"] = 8,
        ["ex_int_office_03b_dlc"] = -72,
        ["v_int_16_low"] = -81,
        ["v_int_16_mid_empty"] = -87,     
    },
    ["WVINE"] = {
        ["baseSellPrice"] = 1200000,
        ["ownedInZonePercent"] = 10,
        ["ex_int_office_03b_dlc"] = -72,
        ["v_int_16_low"] = -81,     
    },
    ["BEACH"] = {
        ["baseSellPrice"] = 350000,
        ["ownedInZonePercent"] = 10,
        ["v_int_49_empty"] = -70,  
    },
    ["RGENL"] = {
        ["baseSellPrice"] = 1200000,
        ["ownedInZonePercent"] = 8,
        ["ex_int_office_03b_dlc"] = -72,
        ["v_int_16_low"] = -81,     
    },
    ["RICHM"] = {
        ["baseSellPrice"] = 1200000,
        ["ownedInZonePercent"] = 8,
        ["ex_int_office_03b_dlc"] = -72,
        ["v_int_16_low"] = -81,    
    },
    ["DELPLE"] = {
        ["baseSellPrice"] = 390000,
        ["ownedInZonePercent"] = 15,
    },
    ["GRAPES"] = {
        ["baseSellPrice"] = 110000,
        ["ownedInZonePercent"] = 10,
        ["v_int_16_mid_empty"] = 100,
        ["shops"] = 200,
    },
    ["DOWNT"] = {
        ["baseSellPrice"] = 1200000,
        ["ownedInZonePercent"] = 5,
        ["ex_int_office_03b_dlc"] = -72,
        ["v_int_16_low"] = -81,   
    },
    ["BHAMCA"] = {
        ["baseSellPrice"] = 350000,
        ["ownedInZonePercent"] = 10,
        ["v_int_49_empty"] = -70, 
    },
    ["MTGORDO"] = {
        ["baseSellPrice"] = 2200000,
        ["ownedInZonePercent"] = 50, 
    },
    ["RANCHO"] = {
        ["baseSellPrice"] = 110000,
        ["ownedInZonePercent"] = 12,
        ["v_int_16_mid_empty"] = 100,
        ["shops"] = 200,
    },
    ["VCABA"] = {
        ["baseSellPrice"] = 350000,
        ["ownedInZonePercent"] = 10,
        ["v_int_49_empty"] = -70, 
    },
    ["CHAMH"] = {
        ["baseSellPrice"] = 110000,
        ["ownedInZonePercent"] = 10,
        ["v_int_16_mid_empty"] = 100,
        ["shops"] = 200,
    },
    ["STRAW"] = {
        ["baseSellPrice"] = 110000,
        ["ownedInZonePercent"] = 12,
        ["v_int_16_mid_empty"] = 100,
        ["shops"] = 200,
    },
    ["DAVIS"] = {
        ["baseSellPrice"] = 110000,
        ["ownedInZonePercent"] = 15,
        ["v_int_16_mid_empty"] = 100,
        ["shops"] = 200,
    },
    ["VCANA"] = { -- mid size houses , with minimal high end housing
        ["baseSellPrice"] = 350000,
        ["ownedInZonePercent"] = 10,
        ["v_int_49_empty"] = -70, 
    },
    ["CHAMW"] = {
        ["baseSellPrice"] = 110000,
        ["ownedInZonePercent"] = 10,
        ["v_int_16_mid_empty"] = 100,
        ["shops"] = 200,
    },
    ["ALTA"] = { -- offices
        ["baseSellPrice"] = 320000,
        ["ownedInZonePercent"] = 5, 
    },
    ["PALETO"] = {
        ["baseSellPrice"] = 130000,
        ["ownedInZonePercent"] = 10,
        ["v_int_16_low"] = 40,    
        ["v_int_49_empty"] = -50,
        ["v_int_61"] = 200,
    },
    ["DELPE"] = { -- mid size , beach side bitch 
        ["baseSellPrice"] = 300000,
        ["ownedInZonePercent"] = 25,
        ["v_int_16_mid_empty"] = -40,
    },
    ["HAWICK"] = { -- offices
        ["baseSellPrice"] = 320000,
        ["ownedInZonePercent"] = 5,
    },
    ["SANDY"] = { -- trailer trash
        ["baseSellPrice"] = 80000,
        ["ownedInZonePercent"] = 10,
        ["v_int_16_mid_empty"] = 130, 
    },
    ["LMESA"] = { -- warhouse , nothing else 
        ["baseSellPrice"] = 450000,
        ["ownedInZonePercent"] = 15,
    },
    ["VESP"] = { -- mid size houses , with minimal high end housing
        ["baseSellPrice"] = 490000,
        ["ownedInZonePercent"] = 5,
        ["v_int_49_empty"] = -70,  
    },
    ["MIRR"] = { -- mid size houses , with high end housing
        ["baseSellPrice"] = 480000,
        ["ownedInZonePercent"] = 10,
        ["v_int_49_empty"] = 15, 
    },
    ["TONGVAH"] = { -- mansions
        ["baseSellPrice"] = 600000,
        ["ownedInZonePercent"] = 0, 
    },
    ["TEXTI"] = { -- offices
        ["baseSellPrice"] = 320000,
        ["ownedInZonePercent"] = 5, 
    },
    ["EBURO"] = { -- warhouse
        ["baseSellPrice"] = 450000,
        ["ownedInZonePercent"] = 15, 
        ["v_int_16_mid_empty"] = -52,
    },
    ["RGLEN"] = { -- mansions
        ["baseSellPrice"] = 1200000,
        ["ownedInZonePercent"] = 5, 
    },
    ["LEGSQU"] = { -- offices
        ["baseSellPrice"] = 320000,
        ["ownedInZonePercent"] = 5, 
    },
    ["MURRI"] = { -- warhouse , nothing else 
        ["baseSellPrice"] = 450000,
        ["ownedInZonePercent"] = 15,  
    },
    ["CYPRE"] = { -- warhouse , nothing else 
        ["baseSellPrice"] = 450000,
        ["ownedInZonePercent"] = 15,  
    },
    ["WINDF"] = { 
        ["baseSellPrice"] = 80000,
        ["ownedInZonePercent"] = 10, 
    },
}


Housing.contract = [[]]


function getContractText(character, price,locationName,LocationType)

local string = string.format([[### Record of Transaction for home Purchase For the County of Los Santos
    
Seller Name: Los Santos State\
Buyer Name: %s
            
            
Address Being Sold : %s \
Description of Property Being Sold : %s \
Value of Property at Time of Sale: $ %s
        
#### Disclosure & Warranty:
        
The Seller certifies that the house is in GOOD REPAIR and that it is structurally sound and meets all code required by State Law.
        
Buyer agrees to the following:
        
* Purchase the home AS IS, and will make no claim against the seller for any defects/issues that arise after purchase. 
        
* Payments on the Property being sold will be due according to the invoice in the form of Property Tax.
        
* State SHALL NOT file for foreclosure until either
    * Two weeks have passed since last payment,
    * Buyer is confirmed to no longer reside within the county, or
    * Granted By a judge for foreclosure
        
* The Property is an asset and therefore falls under the ability for a given loan company and the state to take the property as collateral.
        
Full title and responsibility for all applicable state and local taxes, as well as HOA dues are  the sole responsibility of the Buyer.
    
CID #: %s \
Signature of Buyer: %s
            
Date: %s
    ]],
    character.first_name .. " " .. character.last_name,
    locationName,
    LocationType,
    price,
    character.id,
    character.first_name .. " " .. character.last_name,
    os.date("%Y, %b %d")
)

    return string
end