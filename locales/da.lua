local Translations = {
    error = {
        no_people_nearby = "Ingen spiller i nærheden",
        no_vehicle_found = "Intet køretøj fundet",
        extra_deactivated = "Ekstra %{extra} er blevet deaktiveret",
        extra_not_present = "Ekstra %{extra} er ikke i/på køretøjet",
        not_driver = "Du er ikke føren af dette køretøj",
        vehicle_driving_fast = "Dette køretøj kører for hurtigt",
        seat_occupied = "Dette sæde er optaget",
        race_harness_on = "Du har en racer-sele på, du kan ikke skifte",
        obj_not_found = "Kunne ikke oprette objektet",
        not_near_ambulance = "Du er ikke i nærheden af en ambulance",
        far_away = "Du er for langt væk",
        stretcher_in_use = "Denne båre er allerede i brug",
        not_kidnapped = "Du har ikke kidnappet denne person",
        trunk_closed = "Baggagerummet er lukket",
        cant_enter_trunk = "Du kan ikke komme i baggagerummet",
        already_in_trunk = "Du er allerede i baggagerummet",
        someone_in_trunk = "Der er allerede nogen i baggagerummet"
    },
    success = {
        extra_activated = "Ekstra %{extra} er blevet aktiveret",
        entered_trunk = "Du er i baggagerummet"
    },
    info = {
        no_variants = "Ser ud til at der ingen muligheder er for dette",
        wrong_ped = "Denne PED tillader ikke de handlinger/muligheder",
        nothing_to_remove = "Du har intet at kunne fjerne",
        already_wearing = "Du har det allerede på",
        switched_seats = "Du er nu på %{seat}"
    },
    general = {
        command_description = "Åbn hjul menuen",
        push_stretcher_button = "~g~E~w~ - Skub bårer",
        stop_pushing_stretcher_button = "~g~E~w~ - Stop med at skubbe",
        lay_stretcher_button = "~g~G~w~ - Lig på båren",
        push_position_drawtext = "Skub her",
        get_off_stretcher_button = "~g~G~w~ - Stå op fra båren",
        get_out_trunk_button = "[~g~E~w] Gå ud af baggagerummet",
        close_trunk_button = "[~g~G~w~] Luk baggagerummet",
        open_trunk_button = "[~g~G~w~] Åbn baggagerummet",
        getintrunk_command_desc = "Gå i baggagerummet",
        putintrunk_command_desc = "Læg spiller i baggagerummet"
    },
    options = {
        emergency_button = "Nød knap",
        driver_seat = "Fører sæde",
        passenger_seat = "Passager søde",
        other_seats = "Andet sæde",
        rear_left_seat = "Venstre bagsæde",
        rear_right_seat = "Højre bagsæde"
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
