local Translations = {
    error = {
        no_people_nearby = "Pas de joueur proche",
        no_vehicle_found = "Pas de véhicule trouvé",
        extra_deactivated = "Extra %{extra} a été désactivé",
        extra_not_present = "Extra %{extra} n'est pas présent dans ce véhicule",
        not_driver = "Vous n'êtes pas le conducteur de ce véhicule",
        vehicle_driving_fast = "ce véhicule roule trop vite",
        seat_occupied = "Ce siège est occupé",
        race_harness_on = "Vous avez un harnais de course, vous ne pouvez pas changer",
        obj_not_found = "Impossible de créer l'objet demandé",
        not_near_ambulance = "Vous n'êtes pas à proximité d'une ambulance",
        far_away = "Vous êtes trop loin",
        stretcher_in_use = "Cette civière est déjà utilisée",
        not_kidnapped = "Vous n'avez pas kidnappé cette personne",
        trunk_closed = "Le coffre est fermé",
        cant_enter_trunk = "Vous ne pouvez pas entrer dans le coffre",
        already_in_trunk = "Vous êtes déjà dans le coffre",
        someone_in_trunk = "Quelqu'un est déjà dans le coffre"
    },
    success = {
        extra_activated = "Extra %{extra} a été activé",
        entered_trunk = "Vous êtes dans le coffre"
    },
    info = {
        no_variants = "Il ne semble pas y avoir de variantes pour cela",
        wrong_ped = "Ce modèle de personnage ne permet pas cette option",
        nothing_to_remove = "Vous semblez n'avoir rien à retirer",
        already_wearing = "Vous portez déjà cela",
        switched_seats = "Vous êtes maintenant sur le %{seat}"
    },
    general = {
        command_description = "Ouvrir le menu radial",
        push_stretcher_button = "~g~E~w~ - Pousser la civière",
        stop_pushing_stretcher_button = "~g~E~w~ - Arrêter de pousser",
        lay_stretcher_button = "~g~G~w~ - S'allonger sur la civière",
        push_position_drawtext = "Pousser ici",
        get_off_stretcher_button = "~g~G~w~ - Sortir de la civière",
        get_out_trunk_button = "[~g~E~w] Sortir du coffre",
        close_trunk_button = "[~g~G~w~] Fermer le coffre",
        open_trunk_button = "[~g~G~w~] Ouvrir le coffre",
        getintrunk_command_desc = "Monter dans le coffre",
        putintrunk_command_desc = "Mettre le joueur dans le coffre"
    },
    options = {
        emergency_button = "Bouton d'urgence",
        driver_seat = "Siège conducteur",
        passenger_seat = "Siège passager",
        other_seats = "Autres sièges",
        rear_left_seat = "Siège arrière gauche",
        rear_right_seat = "Siège arrière droit"
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
