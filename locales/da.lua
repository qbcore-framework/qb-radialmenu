local Translations = {
    error = {
        no_people_nearby = "Ingen spillere i nærheden",
        no_vehicle_found = "Intet køretøj fundet",
        extra_deactivated = "Ekstra %{extra} er blevet deaktiveret",
        extra_not_present = "Ekstra %{extra} er ikke til stede på dette køretøj",
        not_driver = "Du er ikke føreren af ​​køretøjet",
        vehicle_driving_fast = "Dette køretøj kører for hurtigt",
        seat_occupied = "Denne plads er taget",
        race_harness_on = "Du har en racersele på, du kan ikke skifte",
        obj_not_found = "Kunne ikke oprette det anmodede objekt",
        not_near_ambulance = "Du er ikke i nærheden af ​​en ambulance",
        far_away = "Du er for langt væk",
        stretcher_in_use = "Denne båre er allerede i brug",
        not_kidnapped = "Du kidnappede ikke denne person",
        trunk_closed = "Bagagerummet er lukket",
        cant_enter_trunk = "Du kan ikke komme i denne bagagerum",
        already_in_trunk = "Du er allerede i bagagerummet",
        someone_in_trunk = "Nogen er allerede i bagagerummet"
    },
    progress = {
        flipping_car = "Vender køretøj.."
    },
    success = {
        extra_activated = "Ekstra %{extra} er blevet aktiveret",
        entered_trunk = "Du er i bagagerummet"
    },
    info = {
        no_variants = "Der lader ikke til at være nogen varianter for dette",
        wrong_ped = "Denne ped-model tillader ikke denne mulighed",
        nothing_to_remove = "Du ser ikke ud til at have noget at fjerne",
        already_wearing = "Det har du allerede på",
        switched_seats = "Du er nu på %{seat}"
    },
    general = {
        command_description = "Åbn Radial Menu",
        push_stretcher_button = "[E] - Skub båre",
        stop_pushing_stretcher_button = "~g~E~w~ - Stop med at skubbe",
        lay_stretcher_button = "[G] - Læg på båre",
        push_position_drawtext = "Skub her",
        get_off_stretcher_button = "[G] - Gå af båren",
        get_out_trunk_button = "[E] Kom ud af bagagerummet",
        close_trunk_button = "[G] Luk bagagerummet",
        open_trunk_button = "[G] Åbn bagagerummet",
        getintrunk_command_desc = "Kom i bagagerummet",
        putintrunk_command_desc = "Sæt spiller i bagagerummet"
    },
    options = {
        emergency_button = "Nødknap",
        driver_seat = "Førersæde",
        passenger_seat = "Passagersæde",
        other_seats = "Andet sæde",
        rear_left_seat = "Venstre bagsæde",
        rear_right_seat = "Højre bagsæde"
    },
}

if GetConvar('qb_locale', 'en') == 'da' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
