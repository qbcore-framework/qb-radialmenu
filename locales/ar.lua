local Translations = {
    error = {
        no_people_nearby = "لا يوجد لاعبون بالجوار",
        no_vehicle_found = "لم يتم العثور على مركبة",
        extra_deactivated = "%{extra} تم إلغاء تنشيطه",
        extra_not_present = "%{extra} غير موجود في هذه السيارة",
        not_driver = "أنت لست سائق السيارة",
        vehicle_driving_fast = "هذه السيارة تسير بسرعة كبيرة",
        seat_occupied = "هذا المقعد مشغول",
        race_harness_on = "لديك حزام و لايمكنك التغير",
        obj_not_found = "تعذر الانشاء",
        not_near_ambulance = "أنت لست بالقرب من سيارة إسعاف",
        far_away = "انت بعيد جدا",
        stretcher_in_use = "هذه النقالة قيد الاستخدام بالفعل",
        not_kidnapped = "أنت لم تختطف او تقيد هدا الشخص",
        trunk_closed = "مغلق",
        cant_enter_trunk = "لا يمكنك الدخول في هذا الصندوق",
        already_in_trunk = "أنت بالفعل في صندوق الأمتعة",
        someone_in_trunk = "شخص ما بالفعل في صندوق السيارة"
    },
    success = {
        extra_activated = "%{extra} تم تفعيله",
        entered_trunk = "أنت في الصندوق"
    },
    info = {
        no_variants = "لا يبدو أن هناك أي متغيرات لهذا",
        wrong_ped = "نموذج الشخصية لا يسمح بدالك",
        nothing_to_remove = "يبدو أنه ليس لديك أي شيء لإزالته",
        already_wearing = "أنت ترتدي ذلك بالفعل",
        switched_seats = "%{seat} أنت الآن على"
    },
    general = {
        command_description = "افتح القائمة الرئيسية",
        push_stretcher_button = "~g~E~w~ - ﺔﻟﺎﻘﻨﻟﺍ ﻊﻓﺩ", -- you need font arabic
        stop_pushing_stretcher_button = "~g~E~w~ - ﻊﻓﺪﻟﺍ ﻦﻋ ﻒﻗﻮﺗ",
        lay_stretcher_button = "~g~G~w~ - ﺔﻟﺎﻘﻨﻟﺍ ﻰﻠﻋ ﻲﻘﻠﺘﺳﺍ",
        push_position_drawtext = "ﺎﻨﻫ ﻦﻣ ﻊﻓﺩ",
        get_off_stretcher_button = "~g~G~w~ - ﺔﻟﺎﻘﻨﻟﺍ ﻦﻣ ﻝﻭﺰﻨﻟﺍ",
        get_out_trunk_button = "~g~E~w~ - ﻕﻭﺪﻨﺼﻟﺍ ﻦﻣ ﺝﺮﺧﺍ",
        close_trunk_button = "~g~G~w~ - ﻪﻘﻠﻏﺍ",
        open_trunk_button = "~g~G~w~ - ﻪﺤﺘﻓ",
        getintrunk_command_desc = "دخول في صندوق الامتعة",
        putintrunk_command_desc = "ضع اللاعب في صندوق الامتعه
    },
    options = {
        emergency_button = "زر الطوارئ", --  to work with arabic go to html/css/main.css and remove all (letter-spacing) or change the font
        driver_seat = "مقعد السائق",
        passenger_seat = "مقعد الراكب",
        other_seats = "مقعد آخر",
        rear_left_seat = "المقعد الخلفي الأيسر",
        rear_right_seat = "المقعد الخلفي الايمن"
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
