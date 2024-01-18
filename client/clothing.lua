local clothes = {
    ["top"] = {
        shirt_index = nil,
        shirt_texture = nil,
        jacket_index = nil,
        jacket_texture = nil,
        gloves_index = nil,
        gloves_texture = nil,
    },
    ["pants"] = {
        index = nil,
        texture = nil
    },

    ["shoes"] = {
        index = nil,
        texture = nil
    },
    ["neck"] = {
        index = nil,
        texture = nil
    },
    ["mask"] = {
        index = nil,
        texture = nil
    },
    ["vest"] = {
        index = nil,
        texture = nil
    },
    ["bag"] = {
        index = nil,
        texture = nil
    },
    --PROPS
    ["ear"] = {
        index = nil,
        texture = nil
    },
    ["helmet"] = {
        index = nil,
        texture = nil        
    },

    ["glasses"] = {
        index = nil,
        texture = nil
    },

    ["watch"] = {
        index = nil,
        texture = nil
    },
    ["bracelet"] = {
        index = nil,
        texture = nil
    },
}

local emotes = {
    ["top"] = {
        on = {Dict = "clothingtie", Anim = "try_tie_negative_a", Move = 51, Dur = 1200},
        off = {Dict = "clothingtie", Anim = "try_tie_negative_a", Move = 51, Dur = 1200}
    },
    ["pants"] = {
        on = {Dict = "re@construction", Anim = "out_of_breath", Move = 51, Dur = 1300},
        off = {Dict = "re@construction", Anim = "out_of_breath", Move = 51, Dur = 1300}
    },
    ["shoes"] = {
        on = {Dict = "random@domestic", Anim = "pickup_low", Move = 0, Dur = 1200},
        off = {Dict = "random@domestic", Anim = "pickup_low", Move = 0, Dur = 1200}
    },
    ["neck"] = {
        on = {Dict = "clothingtie", Anim = "try_tie_positive_a", Move = 51, Dur = 2100},
        off = {Dict = "clothingtie", Anim = "try_tie_positive_a", Move = 51, Dur = 2100}
    },
    ["mask"] = {
        on = {Dict = "mp_masks@standard_car@ds@", Anim = "put_on_mask", Move = 51, Dur = 800},
        off = {Dict = "mp_masks@standard_car@ds@", Anim = "put_on_mask", Move = 51, Dur = 800}
    },
    ["vest"] = {
        on = {Dict = "clothingtie", Anim = "try_tie_negative_a", Move = 51, Dur = 1200},
        off = {Dict = "clothingtie", Anim = "try_tie_negative_a", Move = 51, Dur = 1200}
    },
    ["bag"] = {
        on = {Dict = "anim@heists@ornate_bank@grab_cash", Anim = "intro", Move = 51, Dur = 1600},
        off = {Dict = "anim@heists@ornate_bank@grab_cash", Anim = "intro", Move = 51, Dur = 1600}
    },
    --PROPS
    ["helmet"] = {
        on = {Dict = "mp_masks@standard_car@ds@", Anim = "put_on_mask", Move = 51, Dur = 600},
        off = {Dict = "missheist_agency2ahelmet", Anim = "take_off_helmet_stand", Move = 51, Dur = 1200}
    },
    ["ear"] = {
        on = {Dict = "mp_cp_stolen_tut", Anim = "b_think", Move = 51, Dur = 900},
        off = {Dict = "mp_cp_stolen_tut", Anim = "b_think", Move = 51, Dur = 900}
    },
    ["watch"] = {
        on = {Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200},
        off = {Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200}
    },
    ["bracelet"] = {
        on = {Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200},
        off = {Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200}
    },
    ["glasses"] = {
        on = {Dict = "clothingspecs", Anim = "take_off", Move = 51, Dur = 1400},
        off = {Dict = "clothingspecs", Anim = "take_off", Move = 51, Dur = 1400}
    },
    
}

local function IsMpPed(ped)
	local male = `mp_m_freemode_01` local female = `mp_f_freemode_01`
	local CurrentModel = GetEntityModel(ped)
	if CurrentModel == male then return "male" elseif CurrentModel == female then return "female" else return false end
end

local function IsPedNaked(target, type)
    local Gender = IsMpPed(target)
    local top = {
        ["shirt"] = {
            model = GetPedDrawableVariation(target, 8) == Config.ClothingNaked[Gender]["shirt"].model,
            variant = GetPedTextureVariation(target, 8) == Config.ClothingNaked[Gender]["shirt"].variant,
        },
        ["jacket"] = {
            model = GetPedDrawableVariation(target, 11) == Config.ClothingNaked[Gender]["jacket"].model,
            variant = GetPedTextureVariation(target, 11) == Config.ClothingNaked[Gender]["jacket"].variant,
        },
        ["gloves"] = {
            model = GetPedDrawableVariation(target, 3) == Config.ClothingNaked[Gender]["gloves"].model,
            variant = GetPedTextureVariation(target, 3) == Config.ClothingNaked[Gender]["gloves"].variant,
        },
    }
    local pants = {
        model = GetPedDrawableVariation(target, 4) == Config.ClothingNaked[Gender]["pants"].model,
        variant = GetPedTextureVariation(target, 4) == Config.ClothingNaked[Gender]["pants"].variant,
    }
    local shoes = {
        model = GetPedDrawableVariation(target, 6) == Config.ClothingNaked[Gender]["shoes"].model,
        variant = GetPedTextureVariation(target, 6) == Config.ClothingNaked[Gender]["shoes"].variant,
    }
    local neck = {
        model = GetPedDrawableVariation(target, 7) == Config.ClothingNaked[Gender]["neck"].model,
        variant = GetPedTextureVariation(target, 7) == Config.ClothingNaked[Gender]["neck"].variant,
    }
    local helmet = {
        model = GetPedPropIndex(target, 0) == Config.ClothingNaked[Gender]["helmet"].model,
        variant = GetPedPropTextureIndex(target, 0) == Config.ClothingNaked[Gender]["helmet"].variant,
    }
    local ear = {
        model = GetPedPropIndex(target, 2) == Config.ClothingNaked[Gender]["ear"].model,
        variant = GetPedPropTextureIndex(target, 2) == Config.ClothingNaked[Gender]["ear"].variant,
    }
    local watch = {
        model = GetPedPropIndex(target, 6) == Config.ClothingNaked[Gender]["watch"].model,
        variant = GetPedPropTextureIndex(target, 6) == Config.ClothingNaked[Gender]["watch"].variant,
    }
    local bracelet = {
        model = GetPedPropIndex(target, 7) == Config.ClothingNaked[Gender]["bracelet"].model,
        variant = GetPedPropTextureIndex(target, 7) == Config.ClothingNaked[Gender]["bracelet"].variant,
    }
    local glasses = {
        model = GetPedPropIndex(target, 1) == Config.ClothingNaked[Gender]["glasses"].model,
        variant = GetPedPropTextureIndex(target, 1) == Config.ClothingNaked[Gender]["glasses"].variant,
    }
    local mask = {
        model = GetPedDrawableVariation(target, 1) == Config.ClothingNaked[Gender]["mask"].model,
        variant = GetPedTextureVariation(target, 1) == Config.ClothingNaked[Gender]["mask"].variant,
    }
    local vest = {
        model = GetPedDrawableVariation(target, 9) == Config.ClothingNaked[Gender]["vest"].model,
        variant = GetPedTextureVariation(target, 9) == Config.ClothingNaked[Gender]["vest"].variant,
    }
    local bag = {
        model = GetPedDrawableVariation(target, 5) == Config.ClothingNaked[Gender]["bag"].model,
        variant = GetPedTextureVariation(target, 5) == Config.ClothingNaked[Gender]["bag"].variant,
    }
    if type == "top" then
        if top["shirt"].model and top["shirt"].variant and top["jacket"].model and top["jacket"].variant and top["gloves"].model and top["gloves"].variant then
            return true
        end
    elseif type == "pants" then
        if pants.model and pants.variant then
            return true
        end
    elseif type == "shoes" then
        if shoes.model and shoes.variant then
            return true
        end
    elseif type == "neck" then
        if neck.model and neck.variant then
            return true
        end
    elseif type == "mask" then
        if mask.model and mask.variant then
            return true
        end
    elseif type == "vest" then
        if vest.model and vest.variant then
            return true
        end
    elseif type == "bag" then
        if bag.model and bag.variant then
            return true
        end
        --PROPS
    elseif type == "ear" then
        if ear.model and ear.variant then
            return true
        end
    elseif type == "helmet" then
        if helmet.model and helmet.variant then
            return true
        end
    elseif type == "watch" then
        if watch.model and watch.variant then
            return true
        end
    elseif type == "bracelet" then
        if bracelet.model and bracelet.variant then
            return true
        end
    elseif type == "glasses" then
        if glasses.model and glasses.variant then
            return true
        end
    end

    return false
end

exports('IsPedNaked', IsPedNaked);

local function IncurCooldown(ms)
	CreateThread(function()
		Cooldown = true Wait(ms) Cooldown = false
	end)
end

local function PlayToggleEmote(e, cb)
	local Ped = PlayerPedId()
	while not HasAnimDictLoaded(e.Dict) do RequestAnimDict(e.Dict) Wait(100) end
	if IsPedInAnyVehicle(Ped) then e.Move = 51 end
	TaskPlayAnim(Ped, e.Dict, e.Anim, 3.0, 3.0, e.Dur, e.Move, 0, false, false, false)
	local Pause = e.Dur-500 if Pause < 500 then Pause = 500 end
	IncurCooldown(Pause)
	Wait(Pause) -- Lets wait for the emote to play for a bit then do the callback.
end

local function TakeOffClothing(data)
    local ped = PlayerPedId()
    local which = data
    local Gender = IsMpPed(ped)
    local info = {}
    if type(data) == "table" then
        which = tostring(data.id)
	end
    
    if PlayerData.metadata['isdead'] then return end
    if IsPedNaked(ped, which) then return end
    PlayToggleEmote(emotes[which].off)
    if which == "top" then
        
        clothes["top"].shirt_index = GetPedDrawableVariation(ped, 8)
        clothes["top"].shirt_texture = GetPedTextureVariation(ped, 8)
        clothes["top"].jacket_index = GetPedDrawableVariation(ped, 11)
        clothes["top"].jacket_texture = GetPedTextureVariation(ped, 11)
        clothes["top"].gloves_index = GetPedDrawableVariation(ped, 3)
        clothes["top"].gloves_texture = GetPedTextureVariation(ped, 3)



        SetPedComponentVariation(ped, 3, Config.ClothingNaked[Gender]["gloves"].model, Config.ClothingNaked[Gender]["gloves"].variant, 2)
        SetPedComponentVariation(ped, 11, Config.ClothingNaked[Gender]["jacket"].model, Config.ClothingNaked[Gender]["jacket"].variant, 2)
        SetPedComponentVariation(ped, 8, Config.ClothingNaked[Gender]["shirt"].model, Config.ClothingNaked[Gender]["shirt"].variant, 2)

        info = {
            shirt_model = clothes["top"].shirt_index,
            shirt_variant = clothes["top"].shirt_texture,
            jacket_model = clothes["top"].jacket_index,
            jacket_variant = clothes["top"].jacket_texture,
            gloves_model = clothes["top"].gloves_index,
            gloves_variant = clothes["top"].gloves_texture,
            gender = Gender
        }
    elseif which == "pants" then
        clothes["pants"].index = GetPedDrawableVariation(ped, 4)
        clothes["pants"].texture = GetPedTextureVariation(ped, 4)    

        SetPedComponentVariation(ped, 4, Config.ClothingNaked[Gender]["pants"].model, Config.ClothingNaked[Gender]["pants"].variant, 2)


        info = {
            model = clothes["pants"].index,
            variant = clothes["pants"].texture,
            gender = Gender
        }
    elseif which == "shoes" then
        clothes["shoes"].index = GetPedDrawableVariation(ped, 6)
        clothes["shoes"].texture = GetPedTextureVariation(ped, 6)    

        SetPedComponentVariation(ped, 6, Config.ClothingNaked[Gender]["shoes"].model, Config.ClothingNaked[Gender]["shoes"].variant, 2)


        info = {
            model = clothes["shoes"].index,
            variant = clothes["shoes"].texture,
            gender = Gender
        }
    elseif which == "neck" then
        clothes["neck"].index = GetPedDrawableVariation(ped, 7)
        clothes["neck"].texture = GetPedTextureVariation(ped, 7)    

        SetPedComponentVariation(ped, 7, Config.ClothingNaked[Gender]["neck"].model, Config.ClothingNaked[Gender]["neck"].variant, 2)


        info = {
            model = clothes["neck"].index,
            variant = clothes["neck"].texture,
            gender = Gender
        }
    elseif which == "mask" then
        clothes["mask"].index = GetPedDrawableVariation(ped, 1)
        clothes["mask"].texture = GetPedTextureVariation(ped, 1)    

        SetPedComponentVariation(ped, 1, Config.ClothingNaked[Gender]["mask"].model, Config.ClothingNaked[Gender]["mask"].variant, 2)


        info = {
            model = clothes["mask"].index,
            variant = clothes["mask"].texture,
            gender = Gender
        }
    elseif which == "vest" then
        clothes["vest"].index = GetPedDrawableVariation(ped, 9)
        clothes["vest"].texture = GetPedTextureVariation(ped, 9)    

        SetPedComponentVariation(ped, 9, Config.ClothingNaked[Gender]["vest"].model, Config.ClothingNaked[Gender]["vest"].variant, 2)


        info = {
            model = clothes["vest"].index,
            variant = clothes["vest"].texture,
            gender = Gender
        }
    elseif which == "bag" then
        clothes["bag"].index = GetPedDrawableVariation(ped, 5)
        clothes["bag"].texture = GetPedTextureVariation(ped, 5)    

        SetPedComponentVariation(ped, 5, Config.ClothingNaked[Gender]["bag"].model, Config.ClothingNaked[Gender]["bag"].variant, 2)


        info = {
            model = clothes["bag"].index,
            variant = clothes["bag"].texture,
            gender = Gender
        }
    end

    TriggerServerEvent("qb-radialmenu:server:giveitem", which, 1, false, info)
end

local function TakeOffProps(data)
    local ped = PlayerPedId()
    local which = data
    local info = {}
    if type(data) == "table" then
        which = tostring(data.id)
	end
    if PlayerData.metadata['isdead'] then return end
    if IsPedNaked(ped, which) then Notify(Lang:t("info.nothing_to_remove")) return  end
    PlayToggleEmote(emotes[which].off)
    if which == "helmet" then
        clothes["helmet"].index = GetPedPropIndex(ped, 0)
        clothes["helmet"].texture = GetPedPropTextureIndex(ped, 0)
        ClearPedProp(ped, 0)

        info = {
            model = clothes["helmet"].index,
            variant = clothes["helmet"].texture
        }
    elseif which == "ear" then
        clothes["ear"].index = GetPedPropIndex(ped, 2)
        clothes["ear"].texture = GetPedPropTextureIndex(ped, 2)
        ClearPedProp(ped, 2)

        info = {
            model = clothes["ear"].index,
            variant = clothes["ear"].texture
        }
    elseif which == "glasses" then
        clothes["glasses"].index = GetPedPropIndex(ped, 1)
        clothes["glasses"].texture = GetPedPropTextureIndex(ped, 1)
        ClearPedProp(ped, 1)

        info = {
            model = clothes["glasses"].index,
            variant = clothes["glasses"].texture
        }
    elseif which == "bracelet" then
        clothes["bracelet"].index = GetPedPropIndex(ped, 7)
        clothes["bracelet"].texture = GetPedPropTextureIndex(ped, 7)
        ClearPedProp(ped, 7)

        info = {
            model = clothes["bracelet"].index,
            variant = clothes["bracelet"].texture
        }
    elseif which == "watch" then
        clothes["watch"].index = GetPedPropIndex(ped, 6)
        clothes["watch"].texture = GetPedPropTextureIndex(ped, 6)
        ClearPedProp(ped, 6)

        info = {
            model = clothes["watch"].index,
            variant = clothes["watch"].texture
        }
            
    end
    TriggerServerEvent("qb-radialmenu:server:giveitem", which, 1, false, info)
end

RegisterNetEvent('qb-radialmenu:WearClothes', function(data, type)
    local ped = PlayerPedId()
    local naked = IsPedNaked(ped, type)
    local Gender = IsMpPed(ped)
    if data.info.gender ~= Gender then
        Notify(Lang:t("info.wrong_gender"))
        return
    end
    PlayToggleEmote(emotes[type].on)
    if type == "top" then

        clothes["top"].shirt_index = GetPedDrawableVariation(ped, 8)
        clothes["top"].shirt_texture = GetPedTextureVariation(ped, 8)
        clothes["top"].jacket_index = GetPedDrawableVariation(ped, 11)
        clothes["top"].jacket_texture = GetPedTextureVariation(ped, 11)
        clothes["top"].gloves_index = GetPedDrawableVariation(ped, 3)
        clothes["top"].gloves_texture = GetPedTextureVariation(ped, 3)

        if not naked then
            local info = {
                shirt_model = clothes["top"].shirt_index,
                shirt_variant = clothes["top"].shirt_texture,
                jacket_model = clothes["top"].jacket_index,
                jacket_variant = clothes["top"].jacket_texture,
                gloves_model = clothes["top"].gloves_index,
                gloves_variant = clothes["top"].gloves_texture,
                gender = Gender
            }
    
            TriggerServerEvent("qb-radialmenu:server:giveitem", "top", 1, false, info)
        end
        clothes["top"].shirt_index = nil
        clothes["top"].shirt_texture = nil
        clothes["top"].jacket_model = nil
        clothes["top"].jacket_variant = nil
        clothes["top"].gloves_model = nil
        clothes["top"].gloves_variant = nil
        SetPedComponentVariation(ped, 3, data.info.gloves_model, data.info.gloves_variant, 2)        
        SetPedComponentVariation(ped, 8, data.info.shirt_model, data.info.shirt_variant, 2)        
        SetPedComponentVariation(ped, 11, data.info.jacket_model, data.info.jacket_variant, 2)  

    elseif type == "pants" then
        clothes["pants"].index = GetPedDrawableVariation(ped, 4)
        clothes["pants"].texture = GetPedTextureVariation(ped, 4)
        if not naked then
            local info = {
                model = clothes["pants"].index,
                variant = clothes["pants"].texture,
                gender = Gender
            }
    
            TriggerServerEvent("qb-radialmenu:server:giveitem", "pants", 1, false, info)
        end
        clothes["pants"].index = nil
        clothes["pants"].texture = nil
        SetPedComponentVariation(ped, 4, data.info.model, data.info.variant, 2)
    elseif type == "shoes" then
        clothes["shoes"].index = GetPedDrawableVariation(ped, 6)
        clothes["shoes"].texture = GetPedTextureVariation(ped, 6)
        if not naked then
            local info = {
                model = clothes["shoes"].index,
                variant = clothes["shoes"].texture,
                gender = Gender
            }
    
            TriggerServerEvent("qb-radialmenu:server:giveitem", "shoes", 1, false, info)
        end
        clothes["shoes"].index = nil
        clothes["shoes"].texture = nil
        SetPedComponentVariation(ped, 6, data.info.model, data.info.variant, 2)
    elseif type == "neck" then
        clothes["neck"].index = GetPedDrawableVariation(ped, 7)
        clothes["neck"].texture = GetPedTextureVariation(ped, 7)
        if not naked then
            local info = {
                model = clothes["neck"].index,
                variant = clothes["neck"].texture,
                gender = Gender
            }
    
            TriggerServerEvent("qb-radialmenu:server:giveitem", "neck", 1, false, info)
        end
        clothes["neck"].index = nil
        clothes["neck"].texture = nil
        SetPedComponentVariation(ped, 7, data.info.model, data.info.variant, 2)
    elseif type == "mask" then
        clothes["mask"].index = GetPedDrawableVariation(ped, 1)
        clothes["mask"].texture = GetPedTextureVariation(ped, 1)
        if not naked then
            local info = {
                model = clothes["mask"].index,
                variant = clothes["mask"].texture,
                gender = Gender
            }
    
            TriggerServerEvent("qb-radialmenu:server:giveitem", "mask", 1, false, info)
        end
        clothes["mask"].index = nil
        clothes["mask"].texture = nil
        SetPedComponentVariation(ped, 1, data.info.model, data.info.variant, 2)
    elseif type == "vest" then
        clothes["vest"].index = GetPedDrawableVariation(ped, 9)
        clothes["vest"].texture = GetPedTextureVariation(ped, 9)
        if not naked then
            local info = {
                model = clothes["vest"].index,
                variant = clothes["vest"].texture,
                gender = Gender
            }
    
            TriggerServerEvent("qb-radialmenu:server:giveitem", "vest", 1, false, info)
        end
        clothes["vest"].index = nil
        clothes["vest"].texture = nil
        SetPedComponentVariation(ped, 9, data.info.model, data.info.variant, 2)
    elseif type == "bag" then
        clothes["bag"].index = GetPedDrawableVariation(ped, 5)
        clothes["bag"].texture = GetPedTextureVariation(ped, 5)
        if not naked then
            local info = {
                model = clothes["bag"].index,
                variant = clothes["bag"].texture,
                gender = Gender
            }
    
            TriggerServerEvent("qb-radialmenu:server:giveitem", "bag", 1, false, info)
        end
        clothes["bag"].index = nil
        clothes["bag"].texture = nil
        SetPedComponentVariation(ped, 5, data.info.model, data.info.variant, 2)
    end
    TriggerServerEvent("qb-radialmenu:server:removeitem", data.name, 1, data.slot)
end)

RegisterNetEvent('qb-radialmenu:WearProps', function(data, type)
    local ped = PlayerPedId()
    local naked = IsPedNaked(ped, type)
    if type == "helmet" then
        if not naked then
            PlayToggleEmote(emotes["helmet"].off)
    
            clothes["helmet"].index = GetPedPropIndex(ped, 0)
            clothes["helmet"].texture = GetPedPropTextureIndex(ped, 0)
            ClearPedProp(ped, 0)
    
            local info = {
                model = clothes["helmet"].index,
                variant = clothes["helmet"].texture
            }
    
            TriggerServerEvent("qb-radialmenu:server:giveitem", "helmet", 1, false, info)
        end
        PlayToggleEmote(emotes["helmet"].on)
        SetPedPropIndex(ped, 0, data.info.model, data.info.variant, 2) 
    
        clothes["helmet"].index = nil
        clothes["helmet"].texture = nil
    elseif type == "ear" then
        if not naked then
            PlayToggleEmote(emotes["ear"].off)
    
            clothes["ear"].index = GetPedPropIndex(ped, 2)
            clothes["ear"].texture = GetPedPropTextureIndex(ped, 2)
            ClearPedProp(ped, 2)
    
            local info = {
                model = clothes["ear"].index,
                variant = clothes["ear"].texture
            }
    
            TriggerServerEvent("qb-radialmenu:server:giveitem", "ear", 1, false, info)
        end
        PlayToggleEmote(emotes["ear"].on)
        SetPedPropIndex(ped, 2, data.info.model, data.info.variant, 2) 
    
        clothes["ear"].index = nil
        clothes["ear"].texture = nil
    elseif type == "glasses" then
        if not naked then
            PlayToggleEmote(emotes["glasses"].off)
    
            clothes["glasses"].index = GetPedPropIndex(ped, 1)
            clothes["glasses"].texture = GetPedPropTextureIndex(ped, 1)
            ClearPedProp(ped, 1)
    
            local info = {
                model = clothes["glasses"].index,
                variant = clothes["glasses"].texture
            }
    
            TriggerServerEvent("qb-radialmenu:server:giveitem", "glasses", 1, false, info)
        end
        PlayToggleEmote(emotes["glasses"].on)
        SetPedPropIndex(ped, 1, data.info.model, data.info.variant, 2) 
    
        clothes["glasses"].index = nil
        clothes["glasses"].texture = nil
    elseif type == "bracelet" then
        if not naked then
            PlayToggleEmote(emotes["bracelet"].off)
    
            clothes["bracelet"].index = GetPedPropIndex(ped, 7)
            clothes["bracelet"].texture = GetPedPropTextureIndex(ped, 7)
            ClearPedProp(ped, 7)
    
            local info = {
                model = clothes["bracelet"].index,
                variant = clothes["bracelet"].texture
            }
    
            TriggerServerEvent("qb-radialmenu:server:giveitem", "bracelet", 1, false, info)
        end
        PlayToggleEmote(emotes["bracelet"].on)
        SetPedPropIndex(ped, 7, data.info.model, data.info.variant, 2) 
    
        clothes["bracelet"].index = nil
        clothes["bracelet"].texture = nil
    elseif type == "watch" then
        if not naked then
            PlayToggleEmote(emotes["watch"].off)
    
            clothes["watch"].index = GetPedPropIndex(ped, 6)
            clothes["watch"].texture = GetPedPropTextureIndex(ped, 6)
            ClearPedProp(ped, 6)
    
            local info = {
                model = clothes["watch"].index,
                variant = clothes["watch"].texture
            }
    
            TriggerServerEvent("qb-radialmenu:server:giveitem", "watch", 1, false, info)
        end
        PlayToggleEmote(emotes["watch"].on)
        SetPedPropIndex(ped, 6, data.info.model, data.info.variant, 2) 
    
        clothes["watch"].index = nil
        clothes["watch"].texture = nil
    end
    TriggerServerEvent("qb-radialmenu:server:removeitem", data.name, 1, data.slot)
end)

RegisterNetEvent('qb-radialmenu:TakeOffClothing', TakeOffClothing)
RegisterNetEvent('qb-radialmenu:TakeOffProps', TakeOffProps)

function Notify(message, color) -- However you want your notifications to be shown, you can switch it up here.
	QBCore.Functions.Notify(message, color)
end
