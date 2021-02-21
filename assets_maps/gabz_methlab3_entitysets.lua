Citizen.CreateThread(function()


    RequestIpl("gabz_biker_interior_placement_interior_2_biker_dlc_int_ware03_milo_")
    
        interiorID = GetInteriorAtCoords(2292.182, 4838.592, 30.30764)
            
        
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