
ESX = nil
local primeraaparicion = true 



fastfoodpeds2 =  {
{ ['x'] =-1182.55,  ['y'] = -888.72 , ['z'] = 12.49, ['h'] = 43.89},
{ ['x'] =-1183.55,  ['y'] = -887.35 ,['z'] = 12.49, ['h'] = 211.02},
}


Citizen.CreateThread(function()
local hash = GetHashKey("s_m_y_mime")
 local anim1 = "amb@code_human_in_bus_passenger_idles@male@coffee@idle_a"
 local lib1 = "idle_b"

if not HasModelLoaded(hash) then
  RequestModel(hash)
  Citizen.Wait(150)
end
while not HasModelLoaded(hash) do 
  Citizen.Wait(11)
end
if primeraaparicion == true then
for i=1, #fastfoodpeds2, 1 do	
  local npc = CreatePed(6,hash, fastfoodpeds2[i].x, fastfoodpeds2[i].y, fastfoodpeds2[i].z, fastfoodpeds2[i].h, false, false)
    FreezeEntityPosition(npc, true)
    SetEntityInvincible(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
            RequestAnimDict(anim1)
           while not HasAnimDictLoaded(anim1) do
           Citizen.Wait(1000)
           end
          Citizen.Wait(200)   
          TaskPlayAnim(npc,anim1,lib1,1.0, 1.0, -1, 9, 1.0, 0, 0, 0)
end
end 
end)




fastfoodpeds3 =  {
{ ['x'] = -1181.59,  ['y'] = -889.72 , ['z'] = 12.49 ,   ['h'] = 131.94},
{ ['x'] = -1194.82,  ['y'] = -884.32 ,['z'] =  12.49  ,  ['h'] = 302.6}
}
Citizen.CreateThread(function()
local hash = GetHashKey("s_f_y_movprem_01")
local anim1 = "amb@prop_human_seat_chair@female@proper@react_shock"
local lib1 = "back_right"

if not HasModelLoaded(hash) then
  RequestModel(hash)
 Citizen.Wait(150)

end
while not HasModelLoaded(hash) do 
Citizen.Wait(11)
end
if primeraaparicion == true then
for i=1, #fastfoodpeds3, 1 do	
  local npc = CreatePed(6,hash, fastfoodpeds3[i].x, fastfoodpeds3[i].y, fastfoodpeds3[i].z, fastfoodpeds3[i].h, false, false)

    FreezeEntityPosition(npc, true)
    SetEntityInvincible(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
            RequestAnimDict(anim1)
           while not HasAnimDictLoaded(anim1) do
           Citizen.Wait(1000)
           end
          Citizen.Wait(200)   
          TaskPlayAnim(npc,anim1,lib1,1.0, 1.0, -1, 9, 1.0, 0, 0, 0)
end
end 
end)



fastfoodpeds4 =  {
{ ['x'] = -1180.94,  ['y'] = -890.84 , ['z'] = 12.49 ,   ['h'] = 92.76},
{ ['x'] = -1188.80,  ['y'] = -879.38 , ['z'] = 12.49 ,   ['h'] = 175.35},

}
Citizen.CreateThread(function()
local hash = GetHashKey("csb_anita")
local anim1 = "amb@prop_human_seat_chair_food@female@base"
local lib1 = "base"

if not HasModelLoaded(hash) then
  RequestModel(hash)
  Citizen.Wait(150)

end
while not HasModelLoaded(hash) do 
Citizen.Wait(11)
end
if primeraaparicion == true then
for i=1, #fastfoodpeds4, 1 do	
  local npc = CreatePed(6,hash, fastfoodpeds4[i].x, fastfoodpeds4[i].y, fastfoodpeds4[i].z, fastfoodpeds4[i].h, false, false)

    FreezeEntityPosition(npc, true)
    SetEntityInvincible(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
            RequestAnimDict(anim1)
           while not HasAnimDictLoaded(anim1) do
           Citizen.Wait(1000)
           end
          Citizen.Wait(200)   
          TaskPlayAnim(npc,anim1,lib1,1.0, 1.0, -1, 9, 1.0, 0, 0, 0)
end
end 
end)

fastfoodpeds5 =  {
{ ['x'] =-1181.59,  ['y'] = -891.62 , ['z'] = 12.49 ,  ['h'] = 38.76},
{ ['x'] =-1189.12,  ['y'] = -890.47 , ['z'] = 12.49 ,  ['h'] = 208.56},
{ ['x'] =-1190.98,  ['y'] = -886.03 , ['z'] = 12.49 ,  ['h'] =120.65},

}

Citizen.CreateThread(function()
local hash = GetHashKey("ig_ashley")
local anim1 = "amb@prop_human_seat_chair_food@female@idle_b"
local lib1 = "idle_e"

if not HasModelLoaded(hash) then
  RequestModel(hash)
 Citizen.Wait(150)

end
while not HasModelLoaded(hash) do 
  Citizen.Wait(11)
end
if primeraaparicion == true then
for i=1, #fastfoodpeds5, 1 do	
  local npc = CreatePed(6,hash, fastfoodpeds5[i].x, fastfoodpeds5[i].y, fastfoodpeds5[i].z, fastfoodpeds5[i].h, false, false)

    FreezeEntityPosition(npc, true)
    SetEntityInvincible(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
            RequestAnimDict(anim1)
           while not HasAnimDictLoaded(anim1) do
           Citizen.Wait(1000)
           end
          Citizen.Wait(200)   
          TaskPlayAnim(npc,anim1,lib1,1.0, 1.0, -1, 9, 1.0, 0, 0, 0)
end
end 
end)



fastfoodpeds7 =  {
{ ['x'] =-1190.40,  ['y'] = -892.62 , ['z'] = 12.49 ,  ['h'] = 30.79},
{ ['x'] =-1183.45,  ['y'] = -892.56 , ['z'] = 12.49 ,  ['h'] = 113.99},
{ ['x'] =-1191.23,  ['y'] = -887.24 , ['z'] = 12.49 ,  ['h'] = 31.78},

}

Citizen.CreateThread(function()
local hash = GetHashKey("a_m_y_bevhills_01")
local anim1 = "amb@code_human_in_bus_passenger_idles@male@sit@base"
local lib1 = "base"

if not HasModelLoaded(hash) then
  RequestModel(hash)
 Citizen.Wait(150)

end
while not HasModelLoaded(hash) do 
  Citizen.Wait(11)
end
if primeraaparicion == true then
for i=1, #fastfoodpeds7, 1 do	
  local npc = CreatePed(6,hash, fastfoodpeds7[i].x, fastfoodpeds7[i].y, fastfoodpeds7[i].z, fastfoodpeds7[i].h, false, false)

    FreezeEntityPosition(npc, true)
    SetEntityInvincible(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
            RequestAnimDict(anim1)
           while not HasAnimDictLoaded(anim1) do
           Citizen.Wait(1000)
           end
          Citizen.Wait(200)   
          TaskPlayAnim(npc,anim1,lib1,1.0, 1.0, -1, 9, 1.0, 0, 0, 0)
end
end 
end)



fastfoodpeds8=  {
{ ['x'] =-1189.63,  ['y'] = -879.86 , ['z'] = 12.49 ,  ['h'] = 236.45},

{ ['x'] =-1193.43,  ['y'] = -883.39 , ['z'] = 12.49 ,  ['h'] = 120.65},
{ ['x'] =-1189.43,  ['y'] = -891.86 , ['z'] = 12.49 ,  ['h'] = 304.45},

{ ['x'] =-1185.07,  ['y'] = -893.55 , ['z'] = 12.49 ,  ['h'] = 302.89},


}

Citizen.CreateThread(function()
local hash = GetHashKey("s_m_y_barman_01")
local anim1 = "amb@prop_human_seat_chair@male@right_foot_out@base"
local lib1 = "base"

if not HasModelLoaded(hash) then
  RequestModel(hash)
  Citizen.Wait(150)

end
while not HasModelLoaded(hash) do 
  Citizen.Wait(11)
end
if primeraaparicion == true then
for i=1, #fastfoodpeds8, 1 do	
  local npc = CreatePed(6,hash, fastfoodpeds8[i].x, fastfoodpeds8[i].y, fastfoodpeds8[i].z, fastfoodpeds8[i].h, false, false)

    FreezeEntityPosition(npc, true)
    SetEntityInvincible(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
            RequestAnimDict(anim1)
           while not HasAnimDictLoaded(anim1) do
           Citizen.Wait(1000)
           end
          Citizen.Wait(200)   
          TaskPlayAnim(npc,anim1,lib1,1.0, 1.0, -1, 9, 1.0, 0, 0, 0)
end
end 
end)






