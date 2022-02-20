local QBCore = exports['qb-core']:GetCoreObject()

Config = {}

Config.PaymentType = 'cash'                                 
Config.DriversTest = true                                   
Config.SpeedMultiplier = 2.236936  
Config.MaxErrors       = 3
Config.Ped = 's_m_y_airworker' 
Config.PedHash = 0x62018559
Config.GiveItem = true

Config.Amount = { 
    ['driving']     = 500, 
    ['cdl']         = 500,
    ['bike']        = 250 
}

Config.Location = {
    ['marker'] = vector3(218.16, -1391.72, 30.59),
    ['spawn'] = vector4(236.08, -1401.41, 30.58, 265.06) 
}

Config.Blip = {
  Sprite = 380,
  Display = 4,
  Color = 37,
  Scale = 0.8,
  ShortRange = true,
  BlipName = 'Escola de condução'
}

Config.VehicleModels = {
  driver = 'blista',                                         
  cdl = 'mule',                                       
  bike = 'faggio'
}

Config.SpeedLimits = {                                     
  residence = 50,
  town      = 80,
  freeway   = 120
}

Config.CheckPoints = {                                     

  {
    Pos = {x = 255.139, y = -1400.731, z = 29.537},
    Action = function(playerPed, vehicle, setCurrentZoneType)
      DrawMissionText('Va para o próximo ponto! Limite de velocidade: ~y~' .. Config.SpeedLimits['residence'] .. 'kmh', 5000)
    end
  },

  {
    Pos = {x = 271.874, y = -1370.574, z = 30.932},
    Action = function(playerPed, vehicle, setCurrentZoneType)
      DrawMissionText('Vá para o próximo ponto', 5000)
    end
  },

  {
    Pos = {x = 234.907, y = -1345.385, z = 29.542},
    Action = function(playerPed, vehicle, setCurrentZoneType)
      Citizen.CreateThread(function()
        DrawMissionText('~r~para~s~ para o pedestre ~y~passar', 5000)
        PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
        FreezeEntityPosition(vehicle, true)
        Citizen.Wait(4000)
        FreezeEntityPosition(vehicle, false)
        DrawMissionText('~g~Boa~s~, continua.', 5000)

      end)
    end
  },

  {
    Pos = {x = 217.821, y = -1410.520, z = 28.292},
    Action = function(playerPed, vehicle, setCurrentZoneType)

      setCurrentZoneType('town')

      Citizen.CreateThread(function()
        DrawMissionText('~r~Para~s~ e olha para a ~y~esquerda~s~. Limite de velocidade:~y~ ' .. Config.SpeedLimits['town'] .. 'kmh', 5000)
        PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
        FreezeEntityPosition(vehicle, true)
        Citizen.Wait(6000)
        FreezeEntityPosition(vehicle, false)
        DrawMissionText('~g~Boa~s~, Vira a direita e segue a linha', 5000)
      end)
    end
  },

  {
    Pos = {x = 178.550, y = -1401.755, z = 27.725},
    Action = function(playerPed, vehicle, setCurrentZoneType)
      DrawMissionText('olha para o tráfico e ~y~liga as luzes do veiculo~s~!', 5000)
    end
  },

  {
    Pos = {x = 113.160, y = -1365.276, z = 27.725},
    Action = function(playerPed, vehicle, setCurrentZoneType)
      DrawMissionText('vai para o próximo ponto!', 5000)
    end
  },

  {
    Pos = {x = -73.542, y = -1364.335, z = 27.789},
    Action = function(playerPed, vehicle, setCurrentZoneType)
      DrawMissionText('~r~Para~s~ para os veiculos passarem!', 5000)
      PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
      FreezeEntityPosition(vehicle, true)
      Citizen.Wait(6000)
      FreezeEntityPosition(vehicle, false)
    end
  },

  {
    Pos = {x = -355.143, y = -1420.282, z = 27.868},
    Action = function(playerPed, vehicle, setCurrentZoneType)
      DrawMissionText('vai para o próximo ponto!', 5000)
    end
  },

  {
    Pos = {x = -439.148, y = -1417.100, z = 27.704},
    Action = function(playerPed, vehicle, setCurrentZoneType)
      DrawMissionText('vai para o próximo ponto!', 5000)
    end
  },

  {
    Pos = {x = -453.790, y = -1444.726, z = 27.665},
    Action = function(playerPed, vehicle, setCurrentZoneType)

      setCurrentZoneType('freeway')

      DrawMissionText('está na hora de dirigir na autoestrada! Limite de velocidade:~y~ ' .. Config.SpeedLimits['freeway'] .. 'kmh', 5000)
      PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
    end
  },

  {
    Pos = {x = -463.237, y = -1592.178, z = 37.519},
    Action = function(playerPed, vehicle, setCurrentZoneType)
      DrawMissionText('vai para o próximo ponto!', 5000)
    end
  },

  {
    Pos = {x = -900.647, y = -1986.28, z = 26.109},
    Action = function(playerPed, vehicle, setCurrentZoneType)
      DrawMissionText('vai para o próximo ponto!', 5000)
    end
  },

  {
    Pos = {x = 1225.759, y = -1948.792, z = 38.718},
    Action = function(playerPed, vehicle, setCurrentZoneType)
      DrawMissionText('vai para o próximo ponto!', 5000)
    end
  },

  {
    Pos = {x = 1225.759, y = -1948.792, z = 38.718},
    Action = function(playerPed, vehicle, setCurrentZoneType)

      setCurrentZoneType('town')

      DrawMissionText('entrou na cidade, toma cuidado com a tua velocidade! Limite de velocidade: ~y~' .. Config.SpeedLimits['town'] .. 'kmh', 5000)
    end
  },

  {
    Pos = {x = 1163.603, y = -1841.771, z = 35.679},
    Action = function(playerPed, vehicle, setCurrentZoneType)
      DrawMissionText('estou impressionado, mas não te esqueças de estar ~r~alerta~s~ enquando dirige!', 5000)
      PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
    end
  },

  {
    Pos = {x = 235.283, y = -1398.329, z = 28.921},
    Action = function(playerPed, vehicle, setCurrentZoneType)
      function QBCore.Functions.DeleteVehicle(vehicle)
        SetEntityAsMissionEntity(vehicle, true, true)
        DeleteVehicle(vehicle)
      end
    end
  },

}