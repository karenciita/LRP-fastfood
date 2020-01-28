ESX               = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterNetEvent("LRP-fastfood:ticket")
AddEventHandler("LRP-fastfood:ticket", function()

    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    local limitanteticket = xPlayer.getInventoryItem('ticket').count 
  
if limitanteticket >= 1 then
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = '  Ya tienes un ticket, ve y rolea tu orden ',length = 4500})

else
  
    xPlayer.addInventoryItem('ticket', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'success', text = '  ve y pide el combo que decidiste comprar ',length = 4500})
 end

end)



RegisterNetEvent("LRP-fastfood:PedidosOrden")
AddEventHandler("LRP-fastfood:PedidosOrden", function(item, count)

    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)

    local limitanteorden1 = xPlayer.getInventoryItem('combo1').count 
    local limitanteorden2 = xPlayer.getInventoryItem('combo2').count
    local limitanteorden3 = xPlayer.getInventoryItem('combo3').count
    local limitanteorden4 = xPlayer.getInventoryItem('combo4').count
    local limitanteorden5 = xPlayer.getInventoryItem('combo5').count
    local limitanteticket = xPlayer.getInventoryItem('ticket').count

    local SuertePedidos = math.random(1, 100)


  if limitanteticket > 0 or limitanteorden1 > 0 or limitanteorden2 > 0 or limitanteorden3 > 0  or limitanteorden4 > 0  or limitanteorden5 > 0 then

    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' ve y completa la orden para pedir otra.',length = 2500})
else

      if SuertePedidos < 20 then

         if  limitanteorden1 > 0 then
          TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = '  Ya se te dio una Orden 1',length = 2500})
         else
 Citizen.Wait(Config.TiempoFD)
         xPlayer.addInventoryItem("combo1", 1)

          end


      elseif SuertePedidos > 20 and SuertePedidos < 39 then

        if  limitanteorden2 > 0 then
          TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = '  Ya se te dio una Orden 2',length = 2500})
        else
 Citizen.Wait(Config.TiempoFD)
         xPlayer.addInventoryItem("combo2", 1)

         end

 
    elseif SuertePedidos > 40 and SuertePedidos < 59 then

        if  limitanteorden3 > 0 then
          TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = '  Ya se te dio una Orden 3',length = 2500})
        else
 Citizen.Wait(Config.TiempoFD)
         xPlayer.addInventoryItem("combo3", 1)

         end

    elseif SuertePedidos > 60 and SuertePedidos < 79 then

        if  limitanteorden4 > 0 then
          TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = '  Ya se te dio una Orden 4',length = 3500})
        else
 Citizen.Wait(Config.TiempoFD)
         xPlayer.addInventoryItem("combo4", 1)

         end

    elseif SuertePedidos > 80 and SuertePedidos < 99 then

        if  limitanteorden5 > 0 then
          TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = '  Ya se te dio una Orden 5',length = 3500})
        else
 Citizen.Wait(Config.TiempoFD)
         xPlayer.addInventoryItem("combo5", 1)

         end

      end
  end  

end)


RegisterNetEvent("LRP-fastfood:cocinahcarnecruda")
AddEventHandler("LRP-fastfood:cocinahcarnecruda", function(item, count)

    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)

    local limitanteorden1 = xPlayer.getInventoryItem('combo1').count 
    local limitanteorden2 = xPlayer.getInventoryItem('combo2').count
    local limitanteorden3 = xPlayer.getInventoryItem('combo3').count
    local limitanteorden4 = xPlayer.getInventoryItem('combo4').count
    local limitanteorden5 = xPlayer.getInventoryItem('combo5').count
    local limitanteticket = xPlayer.getInventoryItem('ticket').count

    local limitadorhcarnecruda = xPlayer.getInventoryItem('hcarnecruda').count

    local limitadorpollofrita = xPlayer.getInventoryItem('hpollofrito').count
    local limitadorhcarnefrita = xPlayer.getInventoryItem('hcarnefrita').count


  if limitanteticket > 0 or limitanteorden1 > 0 or limitanteorden2 > 0 or limitanteorden3 > 0   or limitanteorden4 > 0  or limitanteorden5 > 0 then

    if limitadorhcarnecruda > 0 then
 
    if limitadorpollofrita > 0  or  limitadorhcarnefrita > 0 then
          TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No puedes cocinar mas carne , termina tu orden ',length = 3500})
    else
    xPlayer.removeInventoryItem('hcarnecruda', 1)
    Citizen.Wait(Config.TiempoFD)
    xPlayer.addInventoryItem('hcarnefrita', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'success', text = 'Acabas de freir la carne',length = 2500})
  end


   else
   TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes Carne Cruda para cocinar ',length = 2500})

    end

else
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes una Orden  para Cocinar',length = 2500})

  end

end)





RegisterNetEvent("LRP-fastfood:cocinahpollocrudo")
AddEventHandler("LRP-fastfood:cocinahpollocrudo", function(item, count)

    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)

    local limitanteorden1 = xPlayer.getInventoryItem('combo1').count 
    local limitanteorden2 = xPlayer.getInventoryItem('combo2').count
    local limitanteorden3 = xPlayer.getInventoryItem('combo3').count
    local limitanteorden4 = xPlayer.getInventoryItem('combo4').count
    local limitanteorden5 = xPlayer.getInventoryItem('combo5').count
    local limitanteticket = xPlayer.getInventoryItem('ticket').count
    local limitadorpollocruda = xPlayer.getInventoryItem('hpollocrudo').count

    local limitadorpollofrita = xPlayer.getInventoryItem('hpollofrito').count
    local limitadorhcarnefrita = xPlayer.getInventoryItem('hcarnefrita').count

  if limitanteticket > 0 or limitanteorden1 > 0 or limitanteorden2 > 0 or limitanteorden3 > 0   or limitanteorden4 > 0  or limitanteorden5 > 0 then

    if limitadorpollocruda > 0  then


    if limitadorpollofrita > 0  or  limitadorhcarnefrita > 0 then
          TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No puedes cocinar mas carne , termina tu orden ',length = 3500})
    else

    xPlayer.removeInventoryItem('hpollocrudo', 1)
    Citizen.Wait(Config.TiempoFD)
    xPlayer.addInventoryItem('hpollofrito', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'success', text = 'Acabas de freir la carne de pollo',length = 3500})

    end


    else
     TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes Carne pollo para cocinar ',length = 3500})
    end

else
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes una Orden  para Cocinar',length = 2500})
  end

end)





RegisterNetEvent("LRP-fastfood:cocinapapas")
AddEventHandler("LRP-fastfood:cocinapapas", function(item, count)

    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)

    local limitanteorden1 = xPlayer.getInventoryItem('combo1').count 
    local limitanteorden2 = xPlayer.getInventoryItem('combo2').count
    local limitanteorden3 = xPlayer.getInventoryItem('combo3').count
    local limitanteorden4 = xPlayer.getInventoryItem('combo4').count
    local limitanteorden5 = xPlayer.getInventoryItem('combo5').count
    local limitanteticket = xPlayer.getInventoryItem('ticket').count

    local limitadorpapascongeladas = xPlayer.getInventoryItem('papascongeladas').count

    local limitadorbrosterfrito      = xPlayer.getInventoryItem('brosterfrito').count
    local limitadorpapasfritas       = xPlayer.getInventoryItem('papasfritas').count
    local limitadornuggetsfrito      = xPlayer.getInventoryItem('nuggetsfrito').count



  if  limitanteticket > 0 or limitanteorden1 > 0 or limitanteorden2 > 0 or limitanteorden3 > 0   or limitanteorden4 > 0  or limitanteorden5 > 0 then

    if limitadorpapascongeladas >  0  then
          
   if limitadorbrosterfrito > 0 or limitadorpapasfritas > 0 or limitadornuggetsfrito > 0  then
       TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' no puedes freir mas , termina tu orden ',length = 2500})
    else

    xPlayer.removeInventoryItem('papascongeladas', 1)
 Citizen.Wait(Config.TiempoFD)
    xPlayer.addInventoryItem('papasfritas', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'success', text = 'Acabas de freir papas ',length = 2500})

    end


  else
          TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes papas congeladas para freir ',length = 2500})

    end

else
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes una Orden  para Cocinar',length = 2500})

  end

end)

RegisterNetEvent("LRP-fastfood:cocinanuggets")
AddEventHandler("LRP-fastfood:cocinanuggets", function(item, count)

    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)

    local limitanteorden1 = xPlayer.getInventoryItem('combo1').count 
    local limitanteorden2 = xPlayer.getInventoryItem('combo2').count
    local limitanteorden3 = xPlayer.getInventoryItem('combo3').count
    local limitanteorden4 = xPlayer.getInventoryItem('combo4').count
    local limitanteorden5 = xPlayer.getInventoryItem('combo5').count
    local limitanteticket = xPlayer.getInventoryItem('ticket').count

    local limitadornuggetscrudo      =xPlayer.getInventoryItem('nuggetscrudo').count

    local limitadorbrosterfrito      = xPlayer.getInventoryItem('brosterfrito').count
    local limitadorpapasfritas       = xPlayer.getInventoryItem('papasfritas').count
    local limitadornuggetsfrito      = xPlayer.getInventoryItem('nuggetsfrito').count


  if limitanteticket  > 0 or  limitanteorden1 > 0 or limitanteorden2 > 0 or limitanteorden3 > 0   or limitanteorden4 > 0  or limitanteorden5 > 0 then

    if limitadornuggetscrudo  >  0  then
    
   if limitadorbrosterfrito > 0 or limitadorpapasfritas > 0 or limitadornuggetsfrito > 0  then
       TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' no puedes freir mas , termina tu orden ',length = 2500})
    else

    xPlayer.removeInventoryItem('nuggetscrudo', 1)
   Citizen.Wait(Config.TiempoFD)
    xPlayer.addInventoryItem('nuggetsfrito', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'success', text = 'Acabas de freir nuggets ',length = 2500})

    end


 else

 TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes nuggets para freir ',length = 2500})



    end

else
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes una Orden  para Cocinar',length = 2500})

  end

end)


RegisterNetEvent("LRP-fastfood:cocinapollobroster")
AddEventHandler("LRP-fastfood:cocinapollobroster", function(item, count)

    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)

    local limitanteorden1 = xPlayer.getInventoryItem('combo1').count 
    local limitanteorden2 = xPlayer.getInventoryItem('combo2').count
    local limitanteorden3 = xPlayer.getInventoryItem('combo3').count
    local limitanteorden4 = xPlayer.getInventoryItem('combo4').count
    local limitanteorden5 = xPlayer.getInventoryItem('combo5').count
    local limitanteticket = xPlayer.getInventoryItem('ticket').count

    local limitadorbrostercrudo      = xPlayer.getInventoryItem('brostercrudo').count

    local limitadorbrosterfrito      = xPlayer.getInventoryItem('brosterfrito').count
    local limitadorpapasfritas       = xPlayer.getInventoryItem('papasfritas').count
    local limitadornuggetsfrito      = xPlayer.getInventoryItem('nuggetsfrito').count



  if limitanteticket > 0 or limitanteorden1 > 0 or limitanteorden2 > 0 or limitanteorden3 > 0   or limitanteorden4 > 0  or limitanteorden5 > 0 then

    if limitadorbrostercrudo > 0  then
   
   if limitadorbrosterfrito > 0 or limitadorpapasfritas > 0 or limitadornuggetsfrito > 0  then
       TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' no puedes freir mas , termina tu orden ',length = 2500})
    else

    xPlayer.removeInventoryItem('brostercrudo', 1)
 Citizen.Wait(Config.TiempoFD)
    xPlayer.addInventoryItem('brosterfrito', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'success', text = 'Acabas de freir broster ',length = 2500})

    end


  else
       TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes broster crudo para freir ',length = 2500})

    end

else
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes una Orden  para Cocinar',length = 2500})

  end

end)


RegisterNetEvent("LRP-fastfood:dispensadorcocacola")
AddEventHandler("LRP-fastfood:dispensadorcocacola", function(item, count)


    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)

    local limitanteorden1 = xPlayer.getInventoryItem('combo1').count 
    local limitanteorden2 = xPlayer.getInventoryItem('combo2').count
    local limitanteorden3 = xPlayer.getInventoryItem('combo3').count
    local limitanteorden4 = xPlayer.getInventoryItem('combo4').count
    local limitanteorden5 = xPlayer.getInventoryItem('combo5').count
    local limitanteticket = xPlayer.getInventoryItem('ticket').count

    local limitadorsprite = xPlayer.getInventoryItem('Sprite').count
    local limitadorinkacola = xPlayer.getInventoryItem('inkacola').count
    local limitadorcocacola = xPlayer.getInventoryItem('cocacola').count

  if limitanteticket > 0 or limitanteorden1 > 0 or limitanteorden2 > 0 or limitanteorden3 > 0   or limitanteorden4 > 0  or limitanteorden5 > 0 then

    if limitadorsprite > 0 or limitadorinkacola > 0 or limitadorcocacola > 0 then
       TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No puedes servir mas gaseosa , termina tu orden',length = 2500})
    else

Citizen.Wait(Config.TiempoFD)
    xPlayer.addInventoryItem('cocacola', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'success', text = ' Acabas de servir gaseosa ',length = 2500})
    end

else
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes una Orden para servir',length = 2500})

  end

end)


RegisterNetEvent("LRP-fastfood:dispensadorinkacola")
AddEventHandler("LRP-fastfood:dispensadorinkacola", function(item, count)


    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)

    local limitanteorden1 = xPlayer.getInventoryItem('combo1').count 
    local limitanteorden2 = xPlayer.getInventoryItem('combo2').count
    local limitanteorden3 = xPlayer.getInventoryItem('combo3').count
    local limitanteorden4 = xPlayer.getInventoryItem('combo4').count
    local limitanteorden5 = xPlayer.getInventoryItem('combo5').count
    local limitanteticket = xPlayer.getInventoryItem('ticket').count

     local limitadorsprite = xPlayer.getInventoryItem('Sprite').count 
    local limitadorinkacola = xPlayer.getInventoryItem('inkacola').count
    local limitadorcocacola = xPlayer.getInventoryItem('cocacola').count

  if limitanteticket > 0 or limitanteorden1 > 0 or limitanteorden2 > 0 or limitanteorden3 > 0   or limitanteorden4 > 0  or limitanteorden5 > 0 then

    if limitadorsprite > 0 or limitadorinkacola > 0 or limitadorcocacola > 0 then
       TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No puedes servir mas gaseosa , termina tu orden',length = 2500})
    else

    Citizen.Wait(Config.TiempoFD)
    xPlayer.addInventoryItem('inkacola', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'success', text = ' Acabas de servir gaseosa ',length = 2500})
    end

else
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes una Orden para servir',length = 2500})

  end

end)


RegisterNetEvent("LRP-fastfood:dispensadorsprite")
AddEventHandler("LRP-fastfood:dispensadorsprite", function(item, count)


    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)

    local limitanteorden1 = xPlayer.getInventoryItem('combo1').count 
    local limitanteorden2 = xPlayer.getInventoryItem('combo2').count
    local limitanteorden3 = xPlayer.getInventoryItem('combo3').count
    local limitanteorden4 = xPlayer.getInventoryItem('combo4').count
    local limitanteorden5 = xPlayer.getInventoryItem('combo5').count
    local limitanteticket = xPlayer.getInventoryItem('ticket').count

    local limitadorsprite = xPlayer.getInventoryItem('Sprite').count
    local limitadorinkacola = xPlayer.getInventoryItem('inkacola').count
    local limitadorcocacola = xPlayer.getInventoryItem('cocacola').count

  if limitanteticket > 0 or limitanteorden1 > 0 or limitanteorden2 > 0 or limitanteorden3 > 0   or limitanteorden4 > 0  or limitanteorden5 > 0 then

    if limitadorsprite > 0 or limitadorinkacola > 0 or limitadorcocacola > 0 then
       TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No puedes servir mas gaseosa , termina tu orden',length = 2500})
    else
Citizen.Wait(Config.TiempoFD)
    xPlayer.addInventoryItem('Sprite', 1)
    TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'success', text = ' Acabas de servir gaseosa ',length = 2500})
    end

else
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes una Orden para servir',length = 2500})

  end

end)



RegisterNetEvent("LRP-fastfood:empaquetadohcarne")
AddEventHandler("LRP-fastfood:empaquetadohcarne", function(item, count)


    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)

    local limitanteorden1 = xPlayer.getInventoryItem('combo1').count 
    local limitanteorden2 = xPlayer.getInventoryItem('combo2').count
    local limitanteorden3 = xPlayer.getInventoryItem('combo3').count
    local limitanteorden4 = xPlayer.getInventoryItem('combo4').count
    local limitanteorden5 = xPlayer.getInventoryItem('combo5').count
    local limitanteticket = xPlayer.getInventoryItem('ticket').count

    local limitadorpancortado  = xPlayer.getInventoryItem('pancortado').count
    local limitadorhcarnefrita = xPlayer.getInventoryItem('hcarnefrita').count

    local limitadorburguerp    = xPlayer.getInventoryItem('burguerp').count
    local limitadorburguerc    = xPlayer.getInventoryItem('burguerc').count 

    if limitanteticket > 0 or limitanteorden1 > 0 or limitanteorden2 > 0 or limitanteorden3 > 0   or limitanteorden4 > 0  or limitanteorden5 > 0 then

  if limitadorburguerp > 0 or limitadorburguerc > 0  then
 TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No Puedes empaquetar mas , termina tu orden',length = 2500})
 else

if limitadorpancortado > 0 and limitadorhcarnefrita > 0 then

    xPlayer.removeInventoryItem('pancortado', 1) 
    xPlayer.removeInventoryItem('hcarnefrita', 1)
 Citizen.Wait(Config.TiempoFD)
    xPlayer.addInventoryItem('burguerc', 1)
else
TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' Quizas te falta un ingrediente ',length = 2500})
end

end

  else
  TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes una Orden para servir',length = 2500})

  end

end)



RegisterNetEvent("LRP-fastfood:empaquetadohpollo")
AddEventHandler("LRP-fastfood:empaquetadohpollo", function(item, count)


    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)

    local limitanteorden1 = xPlayer.getInventoryItem('combo1').count 
    local limitanteorden2 = xPlayer.getInventoryItem('combo2').count
    local limitanteorden3 = xPlayer.getInventoryItem('combo3').count
    local limitanteorden4 = xPlayer.getInventoryItem('combo4').count
    local limitanteorden5 = xPlayer.getInventoryItem('combo5').count
    local limitanteticket = xPlayer.getInventoryItem('ticket').count

    local limitadorpancortado  = xPlayer.getInventoryItem('pancortado').count
    local limitadorhpollofrito = xPlayer.getInventoryItem('hpollofrito').count

    local limitadorburguerp    = xPlayer.getInventoryItem('burguerp').count
    local limitadorburguerc    = xPlayer.getInventoryItem('burguerc').count 


  if limitanteticket > 0 or limitanteorden1 > 0 or limitanteorden2 > 0 or limitanteorden3 > 0   or limitanteorden4 > 0  or limitanteorden5 > 0 then

    if limitadorburguerp > 0 or limitadorburguerc > 0  then
       TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No Puedes empaquetar mas , termina tu orden',length = 2500})
    else

if limitadorpancortado > 0 and limitadorhpollofrito > 0 then


    xPlayer.removeInventoryItem('pancortado', 1) 
    xPlayer.removeInventoryItem('hpollofrito', 1)
     Citizen.Wait(Config.TiempoFD)
    xPlayer.addInventoryItem('burguerp', 1)

else
   TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' Quizas te falta un ingrediente ',length = 2500})
end

end

else
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' No tienes una Orden para servir',length = 2500})

  end

end)


ESX.RegisterUsableItem('combo1', function(source)

 local xPlayer  = ESX.GetPlayerFromId(source)

 TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' Orden Combo1: Hamburguesa de Carne  ',length = 7500})
 Citizen.Wait(150)
 TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' Orden Combo1: InkaCola  ',length = 7500})
 Citizen.Wait(150)
 TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' Orden Combo1: Papas Fritas  ',length = 7500})

end)

ESX.RegisterUsableItem('combo2', function(source)

 local xPlayer  = ESX.GetPlayerFromId(source)

 TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' Orden Combo2: Pollo Broster  ',length = 7500})
 Citizen.Wait(150)
 TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' Orden Combo2: Cocacola  ',length = 7500})
 Citizen.Wait(150)
 TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' Orden Combo2: Hamburguesa de Pollo  ',length = 7500})

end)

ESX.RegisterUsableItem('combo3', function(source)

 local xPlayer  = ESX.GetPlayerFromId(source)

 TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' Orden Combo3: Papas Fritas  ',length = 7500})
 Citizen.Wait(150)
 TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' Orden Combo3: Hamburguesa de Pollo  ',length = 7500})
 Citizen.Wait(150)
 TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' Orden Combo3: Sprite  ',length = 7500})

end)

ESX.RegisterUsableItem('combo4', function(source)

 local xPlayer  = ESX.GetPlayerFromId(source)

 TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' Orden Combo4: Pollo Broster  ',length = 7500})
 Citizen.Wait(150)
 TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' Orden Combo4: Hamburguesa de Carne  ',length = 7500})
 Citizen.Wait(150)
 TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' Orden Combo4: InkaCola  ',length = 7500})

end)

ESX.RegisterUsableItem('combo5', function(source)

 local xPlayer  = ESX.GetPlayerFromId(source)

 TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' Orden Combo5: Nuggets  ',length = 7500})
 Citizen.Wait(150)
 TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' Orden Combo5: Hamburguesa de Pollo  ',length = 7500})
 Citizen.Wait(150)
 TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' Orden Combo5: Sprite  ',length = 7500})

end)

ESX.RegisterUsableItem('ticket', function(source)

 local xPlayer  = ESX.GetPlayerFromId(source)

 xPlayer.removeInventoryItem('ticket', 1)
 TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = ' acabas de borrar el ticket.  ',length = 3500})

end)
