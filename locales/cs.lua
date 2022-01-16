local Translations = {
    error = {
        no_people_nearby = "V okolí nejsou žádní hráči",
        no_vehicle_found = "Nebylo nalezeno žádné vozidlo v okolí",
        extra_deactivated = "Doplněk %{extra} byl deaktivován",
        extra_not_present = "Doplněk %{extra} se na tomto vozidle nenachází",
        not_driver = "Nejste řidič tohoto vozidla",
        vehicle_driving_fast = "Toto vozidlo jede příliš rychle",
        seat_occupied = "Místo je již obsazené",
        race_harness_on = "Máte zapnutý pás nemužete si přesednout",
        obj_not_found = "Požadovaný objekt nelze vytvořit",
        not_near_ambulance = "Nejste poblíž sanitky",
        far_away = "Jste příliž daleko",
        stretcher_in_use = "Tato nosítka jsou již přenášena",
        not_kidnapped = "You did not kidnap this person", -- I did not find out when this notification is displayed, so it will remain untranslated
        trunk_closed = "Kufr je zavřený",
        cant_enter_trunk = "Do tohoto kufru se nedostaneš",
        already_in_trunk = "Již jsi v kufru",
        someone_in_trunk = "Někdo už je v kufru"
    },
    success = {
        extra_activated = "Doplněk %{extra} byl aktivován",
        entered_trunk = "Jste v kufru"
    },
    info = {
        no_variants = "Zdá se, že pro to neexistují žádné varianty",
        wrong_ped = "This ped model does not allow for this option", -- I did not find out when this notification is displayed, so it will remain untranslated
        nothing_to_remove = "Zdá se, že nemáte co odstranit",
        already_wearing = "Již toto nosíš",
        switched_seats = "Nyní jste na %{seat}"
    },
    general = {
        command_description = "Open Radial Menu",
        push_stretcher_button = "~g~E~w~ - Tlačit nosítka",
        stop_pushing_stretcher_button = "~g~E~w~ - Přestat tlačit nosítka",
        lay_stretcher_button = "~g~G~w~ - Lehnout si na nosítka",
        push_position_drawtext = "Tlačit zde",
        get_off_stretcher_button = "~g~G~w~ - Vstát z nosítek",
        get_out_trunk_button = "[~g~E~w] Vylézt z kufru",
        close_trunk_button = "[~g~G~w~] Zavřít kufr",
        open_trunk_button = "[~g~G~w~] Otevřít kufr",
        getintrunk_command_desc = "Vlézt do kufru",
        putintrunk_command_desc = "Dát hráče do kufru"
    },
    options = {
        emergency_button = "Nouzové Tlačítko", -- Panic button ?
        driver_seat = "Sedadlo řidiče",
        passenger_seat = "Sedadlo spolujezdce",
        other_seats = "Jiné sedadlo",
        rear_left_seat = "Zadní levé sedadlo",
        rear_right_seat = "Zadní pravé sedadlo"
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
