local Translations = {
    error = {
        no_people_nearby = "Keine Spieler in der Nähe",
        no_vehicle_found = "Kein Fahrzeug gefunden",
        extra_deactivated = "Extra %{extra} wurde deaktiviert",
        extra_not_present = "Extra %{extra} gibt es bei diesem Fahrzeug nicht",
        not_driver = "Du bist nicht der Fahrer",
        vehicle_driving_fast = "Das Fahrzeug ist zu schnell",
        seat_occupied = "Der Sitz ist bereits belegt",
        race_harness_on = "Du hast ein Renngurt an, du kannst nicht wechseln",
        obj_not_found = "Das Objekt konnte nicht erstellt werden",
        not_near_ambulance = "Du bist nicht in der Nähe eines Krankenwagens",
        far_away = "Du bist zu weit weg",
        stretcher_in_use = "Diese Bahre ist bereits im Einsatz",
        not_kidnapped = "Du hast diese Person nicht gekidnappt",
        trunk_closed = "Der Kofferraum ist geschlossen",
        cant_enter_trunk = "In diesen Kofferraum kommt man nicht rein",
        already_in_trunk = "Du bist schon im Kofferraum",
        someone_in_trunk = "Jemand ist bereits im Kofferraum"
    },
    success = {
        extra_activated = "Extra %{extra} wurde aktiviert",
        entered_trunk = "Du bist im Kofferraum"
    },
    info = {
        no_variants = "Hierfür scheint es keine Varianten zu geben",
        wrong_ped = "Mit diesem PED Model geht das nicht",
        nothing_to_remove = "Du hast nichts was du entfernen kannst",
        already_wearing = "Du trägst das bereits",
        switched_seats = "Du bist auf dem Sitz %{seat}"
    },
    general = {
        command_description = "Radialmenü öffnen",
        push_stretcher_button = "~g~E~w~ - Push Stretcher",
        stop_pushing_stretcher_button = "~g~E~w~ - Stop Pushing",
        lay_stretcher_button = "~g~G~w~ - Auf die Bahre legen",
        push_position_drawtext = "Drück hier",
        get_off_stretcher_button = "~g~G~w~ - Vom Stretcher absteigen",
        get_out_trunk_button = "[~g~E~w~] Aus dem Kofferraum aussteigen",
        close_trunk_button = "[~g~G~w~] Kofferraum schliessen",
        open_trunk_button = "[~g~G~w~] Kofferraum öffnen",
        getintrunk_command_desc = "In den Kofferraum steigen",
        putintrunk_command_desc = "Spieler in Kofferraum legen"
    },
    options = {
        emergency_button = "Notfall-Knopf",
        driver_seat = "Fahrersitz",
        passenger_seat = "Beifahrersitz",
        other_seats = "Anderer Sitz",
        rear_left_seat = "Sitz hinten links",
        rear_right_seat = "Sitz hinten rechts"
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
