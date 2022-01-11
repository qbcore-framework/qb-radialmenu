local Translations = {
    error = {
        no_people_nearby = "No hay jugadores cerca",
        no_vehicle_found = "No se encontró ningún vehículo",
        extra_deactivated = "Se ha desactivado el extra %{extra}",
        extra_not_present = "Extra %{extra} no está presente en este vehículo",
        not_driver = "No eres el conductor del vehículo",
        vehicle_driving_fast = "Este vehículo va demasiado rápido.",
        seat_occupied = "Este asiento está ocupado",
        race_harness_on = "Tienes un arnés de carrera puesto, no puedes cambiar",
        obj_not_found = "No se pudo crear el objeto solicitado",
        not_near_ambulance = "No estás cerca de una ambulancia",
        far_away = "Estas muy lejos",
        stretcher_in_use = "Esta camilla ya está en uso",
        not_kidnapped = "No has secuestrado a esta persona.",
        trunk_closed = "El maletero esta cerrado",
        cant_enter_trunk = "No puedes entrar en este maletero",
        already_in_trunk = "Ya estas en el maletero",
        someone_in_trunk = "Alguien ya está en el maletero."
    },
    success = {
        extra_activated = "Extra %{extra} ha sido activado",
        entered_trunk = "Estas en el maletero"
    },
    info = {
        no_variants = "No parece haber variantes para esto.",
        wrong_ped = "Este modelo de ped no permite esta opción",
        nothing_to_remove = "Parece que no tienes nada que quitar",
        already_wearing = "Ya llevas eso puesto",
        switched_seats = "Ahora estás en el %{seat}"
    },
    general = {
        command_description = "Abrir menú radial",
        push_stretcher_button = "~g~E~w~ - Empujar camilla",
        stop_pushing_stretcher_button = "~g~E~w~ - Dejar de empujar",
        lay_stretcher_button = "~g~G~w~ - Acostarse en camilla",
        push_position_drawtext = "Empuja aquí",
        get_off_stretcher_button = "~g~G~w~ - Bajarse de la camilla",
        get_out_trunk_button = "[~g~E~w] Sal del maletero",
        close_trunk_button = "[~g~G~w~] Cerrar maletero",
        open_trunk_button = "[~g~G~w~] Abrir maletero",
        getintrunk_command_desc = "Entrar en el maletero",
        putintrunk_command_desc = "Meter al jugador en el maletero"
    },
    options = {
        emergency_button = "Boton de emergencia",
        driver_seat = "Asiento del conductor",
        passenger_seat = "Asiento del pasajero",
        other_seats = "Otro asiento",
        rear_left_seat = "Asiento Trasero Izquierdo",
        rear_right_seat = "Asiento trasero derecho"
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
