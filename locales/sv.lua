local Translations = {
    error = {
        no_people_nearby = "Inga spelare i närheten",
        no_vehicle_found = "Hittar inga fordon",
        extra_deactivated = "Extra %{extra} har inaktiverats",
        extra_not_present = "Extra %{extra} går inte att ha på detta fordon",
        not_driver = "Du är inte förare av fordonet",
        vehicle_driving_fast = "Du kör för fort",
        seat_occupied = "Det är upptaget i detta säte",
        race_harness_on = "Du har 4-punktsbälte på dig, det går inte att byta",
        obj_not_found = "Kunde inte skapa objektet",
        not_near_ambulance = "Du är inte nära en ambulans",
        far_away = "Du är för långt bort",
        stretcher_in_use = "Den här båren används redan",
        not_kidnapped = "Du har inte kidnappat den här personen",
        trunk_closed = "Bakluckan är stängd...",
        cant_enter_trunk = "Du kan inte hoppa in i bagaget",
        already_in_trunk = "Du är redan i bagaget",
        someone_in_trunk = "Det är redan någon i bagaget"
    },
    success = {
        extra_activated = "Extra %{extra} har aktiverats",
        entered_trunk = "Du är i bagaget"
    },
    info = {
        no_variants = "Det verkar inte finnas några variationer av detta",
        wrong_ped = "Den här ped-modellen är inte tillåten med detta alternativ",
        nothing_to_remove = "Du verkar inte ha något att ta bort",
        already_wearing = "Du har redan det här på dig",
        switched_seats = "Du är nu i %{seat}"
    },
    general = {
        command_description = "Öppna Radialmeny",
        push_stretcher_button = "~g~E~w~ - Putta bår",
        stop_pushing_stretcher_button = "~g~E~w~ - Sluta putta",
        lay_stretcher_button = "~g~G~w~ - Lägg på båren",
        push_position_drawtext = "Putta här",
        get_off_stretcher_button = "~g~G~w~ - Kliv av båren",
        get_out_trunk_button = "[~g~E~w] Hoppa ut ur bagaget",
        close_trunk_button = "[~g~G~w~] Stäng bagagelucka",
        open_trunk_button = "[~g~G~w~] Öppna bagageluckan",
        getintrunk_command_desc = "Hoppa in i bagageluckan",
        putintrunk_command_desc = "Stoppa spelare i bagageluckan"
    },
    options = {
        emergency_button = "Akutknapp",
        driver_seat = "Förarsäte",
        passenger_seat = "Passagerarsäte",
        other_seats = "Andra säten",
        rear_left_seat = "Vänster baksäte",
        rear_right_seat = "Höger baksäte"
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
