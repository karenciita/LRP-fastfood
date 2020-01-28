ESX               = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("LRP-EntregaOrdenMesa:combo1")
AddEventHandler("LRP-EntregaOrdenMesa:combo1", function(item, count)


    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)

    local limitanteorden1 = xPlayer.getInventoryItem('combo1').count 
    local limitanteorden2 = xPlayer.getInventoryItem('combo2').count
    local limitanteorden3 = xPlayer.getInventoryItem('combo3').count
    local limitanteorden4 = xPlayer.getInventoryItem('combo4').count
    local limitanteorden5 = xPlayer.getInventoryItem('combo5').count

    local  limitadorburgerc     = xPlayer.getInventoryItem('burguerc').count
    local  limitadorpapasfritas = xPlayer.getInventoryItem('papasfritas').count
    local  limitadorinkacola    = xPlayer.getInventoryItem('inkacola').count

  if limitanteorden1 > 0 or limitanteorden2 > 0 or limitanteorden3 > 0   or limitanteorden4 > 0  or limitanteorden5 > 0 then

if limitadorburgerc > 0  and limitadorpapasfritas > 0  and limitadorinkacola > 0 and limitanteorden1 > 0 then


xPlayer.removeInventoryItem('burguerc', 1)
xPlayer.removeInventoryItem('papasfritas', 1)
xPlayer.removeInventoryItem('combo1', 1)
xPlayer.removeInventoryItem('inkacola', 1)
 Citizen.Wait(Config.TiempoFD)
xPlayer.addMoney(Config.PagoCombo1)
 TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'success', text = ' Muchas gracias por la orden , cobrate $' ..Config.PagoCombo1,length = 7000})


else
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes la orden completa, ve y traemela rapido ',length = 3500})
end

else
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes una Orden entregar',length = 2500})

  end

end)


RegisterNetEvent("LRP-EntregaOrdenMesa:combo2")
AddEventHandler("LRP-EntregaOrdenMesa:combo2", function(item, count)


    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)

    local limitanteorden1 = xPlayer.getInventoryItem('combo1').count 
    local limitanteorden2 = xPlayer.getInventoryItem('combo2').count
    local limitanteorden3 = xPlayer.getInventoryItem('combo3').count
    local limitanteorden4 = xPlayer.getInventoryItem('combo4').count
    local limitanteorden5 = xPlayer.getInventoryItem('combo5').count

    local  limitadorbrosterfrito = xPlayer.getInventoryItem('brosterfrito').count
    local  limitadorburguerp     = xPlayer.getInventoryItem('burguerp').count
    local  limitadorcocacola     = xPlayer.getInventoryItem('cocacola').count

  if limitanteorden1 > 0 or limitanteorden2 > 0 or limitanteorden3 > 0   or limitanteorden4 > 0  or limitanteorden5 > 0 then

if limitadorbrosterfrito > 0  and limitadorburguerp > 0  and limitadorcocacola > 0 and limitanteorden2 > 0 then


xPlayer.removeInventoryItem('combo2', 1)
xPlayer.removeInventoryItem('brosterfrito', 1)
xPlayer.removeInventoryItem('burguerp', 1)
xPlayer.removeInventoryItem('cocacola', 1)
 Citizen.Wait(Config.TiempoFD)
xPlayer.addMoney(Config.PagoCombo2)
 TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'success', text = ' Muchas gracias por la orden , cobrate $' ..Config.PagoCombo2,length = 7000})


else
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes la orden completa, ve y traemela rapido ',length = 3500})
end

else
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes una Orden entregar',length = 2500})

  end

end)

RegisterNetEvent("LRP-EntregaOrdenMesa:combo3")
AddEventHandler("LRP-EntregaOrdenMesa:combo3", function(item, count)


    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)

    local limitanteorden1 = xPlayer.getInventoryItem('combo1').count 
    local limitanteorden2 = xPlayer.getInventoryItem('combo2').count
    local limitanteorden3 = xPlayer.getInventoryItem('combo3').count
    local limitanteorden4 = xPlayer.getInventoryItem('combo4').count
    local limitanteorden5 = xPlayer.getInventoryItem('combo5').count

    local  limitadorpapasfritas  = xPlayer.getInventoryItem('papasfritas').count
    local  limitadorburguerp     = xPlayer.getInventoryItem('burguerp').count
    local  limitadorSprite       = xPlayer.getInventoryItem('Sprite').count

  if limitanteorden1 > 0 or limitanteorden2 > 0 or limitanteorden3 > 0   or limitanteorden4 > 0  or limitanteorden5 > 0 then


if limitadorpapasfritas > 0  and limitadorburguerp > 0  and limitadorSprite > 0 and limitanteorden3 > 0 then

xPlayer.removeInventoryItem('combo3', 1)
xPlayer.removeInventoryItem('Sprite', 1)
xPlayer.removeInventoryItem('burguerp', 1)
xPlayer.removeInventoryItem('papasfritas', 1)
 Citizen.Wait(Config.TiempoFD)
xPlayer.addMoney(Config.PagoCombo3)
 TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'success', text = ' Muchas gracias por la orden , cobrate $' ..Config.PagoCombo3,length = 7000})


else
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes la orden completa, ve y traemela rapido ',length = 3500})
end

else
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes una Orden entregar',length = 2500})

  end

end)


RegisterNetEvent("LRP-EntregaOrdenMesa:combo4")
AddEventHandler("LRP-EntregaOrdenMesa:combo4", function(item, count)


    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)

    local limitanteorden1 = xPlayer.getInventoryItem('combo1').count 
    local limitanteorden2 = xPlayer.getInventoryItem('combo2').count
    local limitanteorden3 = xPlayer.getInventoryItem('combo3').count
    local limitanteorden4 = xPlayer.getInventoryItem('combo4').count
    local limitanteorden5 = xPlayer.getInventoryItem('combo5').count

    local  limitadorbrosterfrito   = xPlayer.getInventoryItem('brosterfrito').count
    local  limitadorburguerc      = xPlayer.getInventoryItem('burguerc').count
    local  limitadorinkacola       = xPlayer.getInventoryItem('inkacola').count


  if limitanteorden1 > 0 or limitanteorden2 > 0 or limitanteorden3 > 0   or limitanteorden4 > 0  or limitanteorden5 > 0 then


if limitadorbrosterfrito > 0  and limitadorburguerc > 0  and limitadorinkacola  > 0 and limitanteorden4 > 0 then

xPlayer.removeInventoryItem('combo4', 1)
xPlayer.removeInventoryItem('inkacola', 1)
xPlayer.removeInventoryItem('burguerc', 1)
xPlayer.removeInventoryItem('brosterfrito', 1)

xPlayer.addMoney(Config.PagoCombo4)
 TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'success', text = ' Muchas gracias por la orden , cobrate $' ..Config.PagoCombo4,length = 7000})


else
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes la orden completa, ve y traemela rapido ',length = 3500})
end

else
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes una Orden entregar',length = 2500})

  end

end)


RegisterNetEvent("LRP-EntregaOrdenMesa:combo5")
AddEventHandler("LRP-EntregaOrdenMesa:combo5", function(item, count)


    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)

    local limitanteorden1 = xPlayer.getInventoryItem('combo1').count 
    local limitanteorden2 = xPlayer.getInventoryItem('combo2').count
    local limitanteorden3 = xPlayer.getInventoryItem('combo3').count
    local limitanteorden4 = xPlayer.getInventoryItem('combo4').count
    local limitanteorden5 = xPlayer.getInventoryItem('combo5').count

    local  limitadorbrosterfrito   = xPlayer.getInventoryItem('nuggetsfrito').count
    local  limitadorburguerp      = xPlayer.getInventoryItem('burguerp').count
    local  limitadorSprite      = xPlayer.getInventoryItem('Sprite').count

  if limitanteorden1 > 0 or limitanteorden2 > 0 or limitanteorden3 > 0   or limitanteorden4 > 0  or limitanteorden5 > 0 then


if limitadorbrosterfrito > 0  and limitadorburguerp > 0  and limitadorSprite  > 0 and limitanteorden5 > 0 then

xPlayer.removeInventoryItem('combo5', 1)
xPlayer.removeInventoryItem('Sprite', 1)
xPlayer.removeInventoryItem('burguerp', 1)
xPlayer.removeInventoryItem('nuggetsfrito', 1)
 Citizen.Wait(Config.TiempoFD)
xPlayer.addMoney(Config.PagoCombo5)
 TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'success', text = ' Muchas gracias por la orden , cobrate $' ..Config.PagoCombo5,length = 7000})


else
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes la orden completa, ve y traemela rapido ',length = 3500})
end

else
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes una Orden entregar',length = 2500})

  end

end)



