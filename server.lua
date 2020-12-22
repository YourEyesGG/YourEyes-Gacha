ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('vouchergacha', function(source)
  local source = tonumber(source) -- Source (Player)
  local xPlayer = ESX.GetPlayerFromId(source) -- Detek Player
  local chance = math.random(1, 15) -- Chance GACHA
	
	if xPlayer.getInventoryItem('vouchergacha').count >= 1 then
	  TriggerClientEvent('youreyes-gacha:unboxing', source) -- Trigger Animasi yang di CLIENT
    
	  Citizen.Wait(4500)
	
    if chance == 1 then -- Jika Chancenya 1
       TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Kamu Memenangkan : '}) -- Notifikasi Chance 1
		   -- Hasil Taro disini
    elseif chance == 2 then -- Jika Chancenya 2
		   TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Kamu Memenangkan : '}) -- Notifikasi Chance 2
       -- Hasil Taro disini
	  elseif chance == 3 then -- Jika Chancenya 3
		  TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Kamu Memenangkan : '}) -- Notifikasi Chance 3
		  -- Hasil Taro disini
	  elseif chance == 5 then -- Jika Chancenya 5
		  TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Kamu Memenangkan : '}) -- Notifikasi Chance 5
		  -- Hasil Taro disini
	else -- Jika Chance Selain 1,2,3,5
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'ZONK!!'}) -- Notifikasi GAGAL
	end

	xPlayer.removeInventoryItem('vouchergacha', 1) -- Remove Item Voucher dari Inventory
	end
end)
