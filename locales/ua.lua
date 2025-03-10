local Translations = {
    error = {
        no_people_nearby = "Немає гравців поблизу",
        no_vehicle_found = "Транспортний засіб не знайдено",
        extra_deactivated = "Додатковий елемент %{extra} вимкнено",
        extra_not_present = "Додатковий елемент %{extra} відсутній на цьому транспорті",
        not_driver = "Ви не водій транспортного засобу",
        vehicle_driving_fast = "Транспорт рухається занадто швидко",
        seat_occupied = "Це місце зайняте",
        race_harness_on = "У вас гоночні ремені безпеки, ви не можете змінити місце",
        obj_not_found = "Не вдалося створити запитаний об'єкт",
        not_near_ambulance = "Ви не біля швидкої допомоги",
        far_away = "Ви занадто далеко",
        stretcher_in_use = "Ці ноші вже використовуються",
        not_kidnapped = "Ви не викрадали цю людину",
        trunk_closed = "Багажник закритий",
        cant_enter_trunk = "Ви не можете залізти в цей багажник",
        already_in_trunk = "Ви вже в багажнику",
        someone_in_trunk = "Хтось уже знаходиться в багажнику"
    },
    progress = {
        flipping_car = "Перевертаємо транспорт.."
    },
    success = {
        extra_activated = "Додатковий елемент %{extra} активовано",
        entered_trunk = "Ви в багажнику"
    },
    info = {
        no_variants = "Схоже, що для цього немає варіантів",
        wrong_ped = "Ця модель персонажа не підтримує цю опцію",
        nothing_to_remove = "Здається, вам нічого видаляти",
        already_wearing = "Ви вже це одягли",
        switched_seats = "Ви тепер на місці %{seat}"
    },
    general = {
        command_description = "Відкрити Радіальне Меню",
        push_stretcher_button = "[E] - Штовхати ноші",
        stop_pushing_stretcher_button = "~g~E~w~ - Припинити штовхати",
        lay_stretcher_button = "[G] - Лягти на ноші",
        push_position_drawtext = "Штовхати тут",
        get_off_stretcher_button = "[G] - Встати з нош",
        get_out_trunk_button = "[E] - Вибратися з багажника",
        close_trunk_button = "[G] - Закрити багажник",
        open_trunk_button = "[G] - Відкрити багажник",
        getintrunk_command_desc = "Залізти в багажник",
        putintrunk_command_desc = "Посадити гравця в багажник"
    },
    options = {
        emergency_button = "Кнопка екстреного виклику",
        driver_seat = "Сидіння водія",
        passenger_seat = "Сидіння пасажира",
        other_seats = "Інше сидіння",
        rear_left_seat = "Заднє ліве сидіння",
        rear_right_seat = "Заднє праве сидіння"
    },
}

if GetConvar('qb_locale', 'en') == 'ua' then
    Lang = Lang or Locale:new({
        phrases = Translations,
        warnOnMissing = true
    })
end
