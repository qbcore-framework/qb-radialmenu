local Translations = {
    error = {
        no_people_nearby = "لا يوجد لاعب قريب",
        no_vehicle_found = "لم يتم العثور على مركبة",
        extra_deactivated = "%{extra} تم الغاء",
        extra_not_present = "%{extra} غير مدعوم",
        not_driver = "أنت لست سائق السيارة",
        vehicle_driving_fast = "هذه السيارة تسير بسرعة كبيرة",
        seat_occupied = "هذا المقعد مشغول",
        race_harness_on = "لديك حزام سباق لا يمكنك التبديل",
        obj_not_found = "لا يمكنك الإنشاء",
        not_near_ambulance = "أنت لست بالقرب من سيارة إسعاف",
        far_away = "انت بعيد جدا",
        stretcher_in_use = "هذا النقالة قيد الاستخدام بالفعل",
        not_kidnapped = "أنت لم تختطف هذا الشخص",
        trunk_closed = "الصندوق مغلق",
        cant_enter_trunk = "لا يمكنك الدخول في هذا الصندوق",
        already_in_trunk = "أنت بالفعل في الصندوق",
        someone_in_trunk = "شخص ما بالفعل في الصندوق"
    },
    success = {
        extra_activated = "%{extra} تم تفعيل",
        entered_trunk = "أنت في الصندوق"
    },
    info = {
        no_variants = "لا يبدو أن هناك أي متغيرات ممكنة",
        wrong_ped = "هذه الشخصية لا تسمح بهذا الخيار",
        nothing_to_remove = "لا يبدو أن لديك أي شيء لإزالته",
        already_wearing = "أنت ترتدي ذلك بالفعل",
        switched_seats = "%{seat} انت"
    },
    general = {
        command_description = "فتح قائمة التحكمات",
        push_stretcher_button = "~g~E~w~ - ﺔﻟﺎﻘﻧ ﻊﻓﺩ", -- you need font arabic to work
        stop_pushing_stretcher_button = "~g~E~w~ - ﻊﻓﺪﻟﺍ ﻦﻋ ﻒﻗﻮﺗ",
        lay_stretcher_button = "~g~G~w~ - ﺔﻟﺎﻘﻧ ﻰﻠﻋ ﻲﻘﻠﺘﺳﺍ",
        push_position_drawtext = "ﺎﻨﻫ ﻦﻣ ﻊﻓﺩ",
        get_off_stretcher_button = "~g~G~w~ - ﺔﻟﺎﻘﻧ ﻦﻣ ﻝﻭﺰﻨﻟﺍ",
        get_out_trunk_button = "~r~E~w~ - ﺝﻭﺮﺨﻠﻟ",
        close_trunk_button = "~r~G~w~ - ﻕﻼﻏﺍ",
        open_trunk_button = "~g~G~w~ - ﺢﺘﻓ",
        getintrunk_command_desc = "دخول صندوق السيارة",
        putintrunk_command_desc = "وضع في صندوق السيارة"
    },
    options = {
        emergency_button = "زر الطوارئ",
        driver_seat = "مقعد السائق",
        passenger_seat = "مقعد امامي",
        other_seats = "باقي المقاعد",
        rear_left_seat = "المقعد الأيسر الخلفي",
        rear_right_seat = "المقعد الأيمن الخلفي"
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
