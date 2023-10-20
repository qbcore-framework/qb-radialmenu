local Translations = {
    error = {
        no_people_nearby = "Ingen spillere i nærheden",
        no_vehicle_found = "Ingen køretøj fundet",
        extra_deactivated = "Ekstra %{extra} er blevet deaktiveret",
        extra_not_present = "Ekstra %{extra} er ikke til stede på dette køretøj",
        not_driver = "Du er ikke føreren af køretøjet",
        vehicle_driving_fast = "Dette køretøj kører for hurtigt",
        seat_occupied = "Dette sæde er optaget",
        race_harness_on = "Du har en racesele på, du kan ikke skifte",
        obj_not_found = "Kunne ikke oprette det anmodede objekt",
        not_near_ambulance = "Du er ikke nær en ambulance",
        far_away = "Du er for langt væk",
        stretcher_in_use = "Denne båre er allerede i brug",
        not_kidnapped = "Du har ikke kidnappet denne person",
        trunk_closed = "Bagsmækken er lukket",
        cant_enter_trunk = "Du kan ikke komme ind i denne bagsmæk",
        already_in_trunk = "Du er allerede i bagsmækken",
        someone_in_trunk = "Der er allerede nogen i bagsmækken"
    },
    progress = {
        flipping_car = "Vender køretøjet.."
    },
    success = {
        extra_activated = "Ekstra %{extra} er blevet aktiveret",
        entered_trunk = "Du er i bagsmækken"
    },
    info = {
        no_variants = "Der synes ikke at være nogen varianter til dette",
        wrong_ped = "Denne ped model tillader ikke denne mulighed",
        nothing_to_remove = "Det ser ikke ud til, at du har noget at fjerne",
        already_wearing = "Du har allerede det på",
        switched_seats = "Du er nu på %{seat}"
    },
    general = {
        command_description = "Åbn radialmenuen",
        push_stretcher_button = "[E] - Skub båre",
        stop_pushing_stretcher_button = "~g~E~w~ - Stop med at skubbe",
        lay_stretcher_button = "[G] - Læg dig på båren",
        push_position_drawtext = "Skub her",
        get_off_stretcher_button = "[G] - Stig af båren",
        get_out_trunk_button = "[E] Kom ud af bagsmækken",
        close_trunk_button = "[G] Luk bagsmækken",
        open_trunk_button = "[G] Åbn bagsmækken",
        getintrunk_command_desc = "Kom ind i bagsmækken",
        putintrunk_command_desc = "Put spiller i bagsmækken"
    },
    options = {
        emergency_button = "Nødstopknap",
        driver_seat = "Førersæde",
        passenger_seat = "Passagersæde",
        other_seats = "Andre sæder",
        rear_left_seat = "Bageste venstre sæde",
        rear_right_seat = "Bageste højre sæde"
    },
}

if GetConvar('qb_locale', 'en') == 'da' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end