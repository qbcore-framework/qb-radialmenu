local Translations = {
    error = {
        no_people_nearby = "近くにプレイヤーがいません。",
        no_vehicle_found = "車両が見つかりません。",
        extra_deactivated = "エクストラ%{extra}が無効になりました",
        extra_not_present = "エクストラ%{extra}はこの車両に存在しません。",
        not_driver = "あなたはこの車のドライバーではありません。",
        vehicle_driving_fast = "この車両は早すぎます。",
        seat_occupied = "このシートは既に使用されています。",
        race_harness_on = "レース用ベルトを使用しているため、席の移動はできません。",
        obj_not_found = "そのオブジェクトは生成できません。",
        not_near_ambulance = "救急車に近くないです。",
        far_away = "遠すぎます。",
        stretcher_in_use = "このストレッチャーは既に使用されています。",
        not_kidnapped = "あなたはこの人を誘拐したわけではありません。",
        trunk_closed = "トランクは閉じています。",
        cant_enter_trunk = "あなたはこのトランクに入ることはできません。",
        already_in_trunk = "あなたは既にトランクの中です。",
        someone_in_trunk = "誰かが既にトランクに入っています。"
    },
    progress = {
        flipping_car = "車両をひっくり返しています。"
    },
    success = {
        extra_activated = "エクストラ%{extra}を有効にしました。",
        entered_trunk = "トランクの中に入りました。"
    },
    info = {
        no_variants = "この車両にバリエーションはありません。",
        wrong_ped = "このPedモデルにはこのオプションは使用できません。",
        nothing_to_remove = "削除するものがありません。",
        already_wearing = "既に着用しています。",
        switched_seats = "%{seat}に移動しました。"
    },
    general = {
        command_description = "ラジアルメニューを開く",
        push_stretcher_button = "[E] - ストレッチャーを押す",
        stop_pushing_stretcher_button = "~g~E~w~ - 押すのをやめる",
        lay_stretcher_button = "[G] - ストレッチャーに横たわる",
        push_position_drawtext = "ここに押す",
        get_off_stretcher_button = "[G] - ストレッチャーから降りる",
        get_out_trunk_button = "[E] トランクから出る",
        close_trunk_button = "[G] トランクを閉じる",
        open_trunk_button = "[G] トランクを開く",
        getintrunk_command_desc = "トランクに入る",
        putintrunk_command_desc = "トランクにプレイヤーを入れる"
    },
    options = {
        emergency_button = "緊急通報ボタン",
        driver_seat = "運転席",
        passenger_seat = "助手席",
        other_seats = "他の席",
        rear_left_seat = "左後部座席",
        rear_right_seat = "右後部座席"
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
