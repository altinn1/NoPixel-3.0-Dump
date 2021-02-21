Citizen.CreateThread(function()


    RequestIpl("gabz_biker_interior_placement_interior_2_biker_dlc_int_ware02_milo_")
    
        interiorID = GetInteriorAtCoords(357.5428, 3563.3, 21.78398)
            
        
        if IsValidInterior(interiorID) then      
                --ActivateInteriorEntitySet(interiorID, "gabz_meth_lab_empty")
                --ActivateInteriorEntitySet(interiorID, "gabz_meth_lab_basic")
                ActivateInteriorEntitySet(interiorID, "gabz_meth_lab_upgrade")
                --ActivateInteriorEntitySet(interiorID, "gabz_meth_lab_low")
                --ActivateInteriorEntitySet(interiorID, "gabz_meth_lab_med")
                ActivateInteriorEntitySet(interiorID, "gabz_meth_lab_full")
                
        RefreshInterior(interiorID)
    
        end
    
    end)