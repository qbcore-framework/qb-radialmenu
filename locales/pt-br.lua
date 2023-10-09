local Translations = {
    error = {
        no_people_nearby = "Nenhum jogador por perto",
        no_vehicle_found = "Nenhum veículo encontrado",
        extra_deactivated = "O extra %{extra} foi desativado",
        extra_not_present = "O extra %{extra} não está presente neste veículo",
        not_driver = "Você não é o motorista do veículo",
        vehicle_driving_fast = "Este veículo está indo muito rápido",
        seat_occupied = "Este assento está ocupado",
        race_harness_on = "Você está usando um arnês de corrida, não pode alternar",
        obj_not_found = "Não foi possível criar o objeto solicitado",
        not_near_ambulance = "Você não está perto de uma Ambulância",
        far_away = "Você está muito longe",
        stretcher_in_use = "Esta maca já está em uso",
        not_kidnapped = "Você não sequestrou esta pessoa",
        trunk_closed = "O porta-malas está fechado",
        cant_enter_trunk = "Você não pode entrar neste porta-malas",
        already_in_trunk = "Você já está no porta-malas",
        someone_in_trunk = "Alguém já está no porta-malas"
    },
    progress = {
        flipping_car = "Virando o veículo..."
    },
    success = {
        extra_activated = "O extra %{extra} foi ativado",
        entered_trunk = "Você está no porta-malas"
    },
    info = {
        no_variants = "Não parece haver variantes para isso",
        wrong_ped = "Este modelo de personagem não permite essa opção",
        nothing_to_remove = "Parece que você não tem nada para remover",
        already_wearing = "Você já está usando isso",
        switched_seats = "Agora você está no %{seat}"
    },
    general = {
        command_description = "Abrir Menu Radial",
        push_stretcher_button = "[E] - Empurrar Maca",
        stop_pushing_stretcher_button = "~g~E~w~ - Parar de Empurrar",
        lay_stretcher_button = "[G] - Deitar na Maca",
        push_position_drawtext = "Empurre Aqui",
        get_off_stretcher_button = "[G] - Sair da Maca",
        get_out_trunk_button = "[E] Sair do porta-malas",
        close_trunk_button = "[G] Fechar o porta-malas",
        open_trunk_button = "[G] Abrir o porta-malas",
        getintrunk_command_desc = "Entrar no Porta-Malas",
        putintrunk_command_desc = "Colocar Jogador no Porta-Malas"
    },
    options = {
        emergency_button = "Botão de Emergência",
        driver_seat = "Assento do Motorista",
        passenger_seat = "Assento do Passageiro",
        other_seats = "Outros Assentos",
        rear_left_seat = "Assento Traseiro Esquerdo",
        rear_right_seat = "Assento Traseiro Direito"
    },
}

if GetConvar('qb_locale', 'en') == 'pt-br' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
