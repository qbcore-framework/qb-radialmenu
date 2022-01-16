local Translations = {
    error = {
        no_people_nearby = "Nazdik Hich Bazikoni Nistid",
        no_vehicle_found = "Vasileye Nagliye Peyda Nashod",
        extra_deactivated = "%{extra} Gheyr Faal Shod",
        extra_not_present = "%{extra} Dar In Khodro Mojud Nist",
        not_driver = "Shoma Ranandeye In Vasileye Nagliye Nistid",
        vehicle_driving_fast = "In Vasileye Nagliye Ba Sorat Bala Dar Hale Harekat Ast",
        seat_occupied = "In Sandali Eshghal Shode Ast",
        race_harness_on = "You have a race harness on, you can't switch",
        obj_not_found = "Object Darkhasti Sakhte Nashod",
        not_near_ambulance = "Nazdik Ambulance Nisti",
        far_away = "Shoma Khayli Door Hastid",
        stretcher_in_use = "In Brankard Dar Hale Hazer Por Ast",
        not_kidnapped = "Shoma In Shakhs Ra Narobudeid",
        trunk_closed = "Sandog Agab Baste Ast",
        cant_enter_trunk = "Shoma Nemitavanid Vared Sandog Agab Shavid",
        already_in_trunk = "Shoma Dar Sandog Agab Hastid",
        someone_in_trunk = "Yek Nafar Az Gabl Dar Sandog Agab Ast"
    },
    success = {
        extra_activated = "%{extra} Faal Shod",
        entered_trunk = "Shoma Dar Sandog Agab Hastid"
    },
    info = {
        no_variants = "Guzine Digari Baraye In Vujud Nadarad",
        wrong_ped = "In Ped Az In Guzine Poshtibani Nemikonad",
        nothing_to_remove = "Be Nazar Miresad Chizi Baraye Hazf Kardav Vujud Nadarad",
        already_wearing = "Dar Hale Hazer Shoma An Ra Mipushid",
        switched_seats = "Shoma Dar Hale Hazer Bar Ruye %{seat} Hastid"
    },
    general = {
        command_description = "Baz Kardan Menu Dayerei",
        push_stretcher_button = "~g~E~w~ - Hol dadne Brankard",
        stop_pushing_stretcher_button = "~g~E~w~ - Istadan",
        lay_stretcher_button = "~g~G~w~ - Roye Brankard Deraz Bekeshid",
        push_position_drawtext = "Hol dadn",
        get_off_stretcher_button = "~g~G~w~ - Az Bekeshid Kharej Shavid",
        get_out_trunk_button = "[~g~E~w] Az Sandog Agab Kharej Shavid",
        close_trunk_button = "[~g~G~w~] Bastan Sandoge Agab",
        open_trunk_button = "[~g~G~w~] Baz Kardan Sandoge Agab",
        getintrunk_command_desc = "Vared Sandog Agab Shavid",
        putintrunk_command_desc = "Bazikon Ra Dar Sandoge Agab Garar Dahid"
    },
    options = {
        emergency_button = "Dokme Orzhansi",
        driver_seat = "Sandali Ranande",
        passenger_seat = "Sandali Mosafer",
        other_seats = "Sandali Digar",
        rear_left_seat = "Sandali Chap Agab",
        rear_right_seat = "Sandali Rast Agab"
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
