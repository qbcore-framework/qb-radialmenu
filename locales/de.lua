local Translations = {
    error = {
        no_people_nearby = "Keine Bürger in der Nähe",
        no_vehicle_found = "Kein Fahrzeug gefunden",
        extra_deactivated = "Extra %{extra} wurde deaktiviert",
        extra_not_present = "Extra %{extra} ist bei diesem Fahrzeug nicht vorhanden",
        not_driver = "Sie sind nicht der Fahrer des Fahrzeugs",
        vehicle_driving_fast = "Dieses Fahrzeug fährt zu schnell",
        seat_occupied = "Dieser Platz ist besetzt",
        race_harness_on = "Wenn du ein Renngeschirr trägst, kannst du nicht wechseln.",
        obj_not_found = "Das angeforderte Objekt konnte nicht erstellt werden",
        not_near_ambulance = "Sie sind nicht in der Nähe einer Ambulanz",
        far_away = "Du bist zu weit weg",
        stretcher_in_use = "Diese Bahre ist bereits im Einsatz",
        not_kidnapped = "Sie haben diese Person nicht gekidnappt.",
        trunk_closed = "Der Kofferraum ist geschlossen",
        cant_enter_trunk = "In diesen Kofferraum kommt man nicht rein",
        already_in_trunk = "Du bist schon im Kofferraum",
        someone_in_trunk = "Jemand ist bereits im Kofferraum"
    },
    progress = {
        flipping_car = "Fahrzeug umdrehen..."
    },
    success = {
        extra_activated = "Extra %{extra} wurde aktiviert",
        entered_trunk = "Du bist im Kofferraum"
    },
    info = {
        no_variants = "Hierfür scheint es keine Varianten zu geben",
        wrong_ped = "Bei diesem Pedalmodell ist diese Option nicht vorgesehen",
        nothing_to_remove = "Sie scheinen nichts zu entfernen zu haben",
        already_wearing = "Sie tragen das bereits",
        switched_seats = "Sie befinden sich jetzt auf der %{seat}"
    },
    general = {
        command_description = "Radialmenü öffnen",
        push_stretcher_button = "~g~E~w~ - Schiebe Bahre",
        stop_pushing_stretcher_button = "~g~E~w~ - Stope Schieben",
        lay_stretcher_button = "~g~G~w~ - Auf die Bahre legen",
        push_position_drawtext = "Hier drücken",
        get_off_stretcher_button = "~g~G~w~ - Runter von der Bahre",
        get_out_trunk_button = "[~g~E~w~] Raus aus dem Kofferraum",
        close_trunk_button = "[~g~G~w~] Schließen Sie den Kofferraum",
        open_trunk_button = "[~g~G~w~] Öffnen Sie den Kofferraum",
        getintrunk_command_desc = "In den Kofferraum steigen",
        putintrunk_command_desc = "Bürger in den Kofferraum legen"
    },
    options = {
        emergency_button = "Notfallknopf",
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
