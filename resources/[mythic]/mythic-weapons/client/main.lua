CreateThread(function()
	while GlobalState["MeleeConfig"] == nil do
		Wait(1)
	end
	for k, v in pairs(GlobalState["MeleeConfig"]) do
		SetWeaponDamageModifier(k, v + 0.0)
	end
end)

CreateThread(function()
    while true do
        DisableControlAction(1, 351, true)
        SetPedCanPlayAmbientAnims(PlayerPedId(), false)
        if IsPedArmed(PlayerPedId(), 6) then
            DisableControlAction(1, 140, true)
            DisableControlAction(1, 141, true)
            DisableControlAction(1, 142, true)
        end
        Wait(5)
    end
end)
