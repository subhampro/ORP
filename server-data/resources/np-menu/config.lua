local isJudge = false
local isPolice = false
local isMedic = false
local isDoctor = false
local isNews = false
local isDead = false
local isInstructorMode = false
local myJob = "unemployed"
local isHandcuffed = false
local isHandcuffedAndWalking = false
local hasOxygenTankOn = false
local gangNum = 0
local cuffStates = {}
local PlayerData = {}

ESX                           = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end
	
	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)

rootMenuConfig =  {
    {
        id = "general",
        displayName = "Genel",
        icon = "#globe-europe",
        enableMenu = function()
            return not isDead
        end,
        subMenus = {"general:escort",  "general:checkoverself", "general:checktargetstates",  "general:keysgive",  "general:emotes",    }
    },
    {
        id = "police-action",
        displayName = "Polis Eylemleri",
        icon = "#police-action",
        enableMenu = function()
            return (PlayerData.job.name == 'police' and not isDead)
        end,
        subMenus = {"general:putinvehicle", "general:escort", "medic:revive", "cuffs:remmask", "police:removeweapons", "police:frisk"}
    },
    {
        id = "police-check",
        displayName = "Polis Kontrolleri",
        icon = "#police-check",
        enableMenu = function()
            return (PlayerData.job.name == 'police' and not isDead)
        end,
        subMenus = {"general:checktargetstates", "police:checkbank", "police:checklicenses", "cuffs:checkinventory", "police:gsr", "police:dnaswab" }
    },
    {
        id = "police-vehicle",
        displayName = "Polis Araba Kontrolleri",
        icon = "#police-vehicle",
        enableMenu = function()
            return (PlayerData.job.name == 'police' and not isDead and IsPedInAnyVehicle(PlayerPedId(), false))
        end,
        subMenus = {"general:unseatnearest", "police:runplate", "police:toggleradar"}
    },
    {
        id = "animations",
        displayName = "Yuruyus Stilleri",
        icon = "#walking",
        enableMenu = function()
            return not isDead
        end,
        subMenus = { "animations:brave", "animations:hurry", "animations:business", "animations:tipsy", "animations:injured","animations:tough", "animations:default", "animations:hobo", "animations:money", "animations:swagger", "animations:shady", "animations:maneater", "animations:chichi", "animations:sassy", "animations:sad", "animations:posh", "animations:alien" }
    },
    {
        id = "expressions",
        displayName = "İfadeler",
        icon = "#expressions",
        enableMenu = function()
            return not isDead
        end,
        subMenus = { "expressions:normal", "expressions:drunk", "expressions:angry", "expressions:dumb", "expressions:electrocuted", "expressions:grumpy", "expressions:happy", "expressions:injured", "expressions:joyful", "expressions:mouthbreather", "expressions:oneeye", "expressions:shocked", "expressions:sleeping", "expressions:smug", "expressions:speculative", "expressions:stressed", "expressions:sulking", "expressions:weird", "expressions:weird2"}
    },
    {
        id = "judge-raid",
        displayName = "MDT",
        icon = "#judge-raid",
        enableMenu = function()
            return (not isDead and isJudge)
        end,
        subMenus = { "judge-raid:checkowner", "judge-raid:seizeall", "judge-raid:takecash", "judge-raid:takedm"}
    },
    {
        id = "judge-licenses",
        displayName = "Lisanslar",
        icon = "#judge-licenses",
        enableMenu = function()
            return (not isDead and isJudge)
        end,
        subMenus = { "police:checklicenses", "judge:grantDriver", "judge:grantBusiness", "judge:grantWeapon", "judge:grantHouse", "judge:grantBar", "judge:grantDA", "judge:removeDriver", "judge:removeBusiness", "judge:removeWeapon", "judge:removeHouse", "judge:removeBar", "judge:removeDA", "judge:denyWeapon", "judge:denyDriver", "judge:denyBusiness", "judge:denyHouse" }
    },
    {
        id = "judge-actions",
        displayName = "Eylemler",
        icon = "#judge-actions",
        enableMenu = function()
            return (not isDead and isJudge)
        end,
        subMenus = { "police:cuff", "cuffs:uncuff", "general:escort", "police:frisk", "cuffs:checkinventory", "police:checkbank"}
    },
    {
        id = "da-actions",
        displayName = "Eylemler",
        icon = "#judge-actions",
        enableMenu = function()
            return (not isDead and isJudge)
        end,
        subMenus = { "police:cuff", "cuffs:uncuff", "general:escort", "police:frisk", "cuffs:checkinventory"}
    },
    {
        id = "cuff",
        displayName = "Kelepce",
        icon = "#cuffs",
        enableMenu = function()
            if not isDead and not IsPlayerFreeAiming(PlayerId()) and not IsPedInAnyVehicle(PlayerPedId(), false) and not isHandcuffed and not isHandcuffedAndWalking then
                if isPolice then
                    return true
                elseif not isPolice then
                    t, distance = GetClosestPlayer()
                    local serverId = GetPlayerServerId(t)
                    if(distance ~= -1 and distance < 3 and not IsPedRagdoll(PlayerPedId())) then
                        if cuffStates[serverId] == nil then
                            return false
                        else
                            return cuffStates[serverId]
                        end
                    end
                end
            end
            return false
        end,
        subMenus = { "cuffs:uncuff", "cuffs:remmask", "cuffs:checkinventory", "cuffs:unseat", "police:seat", "cuffs:checkphone" }
    },
    {
        id = "cuff",
        displayName = "Kelepce",
        icon = "#cuffs-cuff",
        functionName = "civ:cuffFromMenu",
        enableMenu = function()
            return (not isDead and not isHandcuffed and not isHandcuffedAndWalking or PlayerData.job.name == 'police')
        end
    },
    {
        id = "medic",
        displayName = "Tıbbi",
        icon = "#medic",
        enableMenu = function()
            return (PlayerData.job.name == 'ambulance' and not isDead)
        end,
        subMenus = {"medic:revive", "medic:heal", "general:escort", "general:putinvehicle", "general:unseatnearest", "general:checktargetstates" }
    },
    {
        id = "news",
        displayName = "Weazel News",
        icon = "#news",
        enableMenu = function()
            return (PlayerData.job.name == 'reporter' and not isDead)
        end,
        subMenus = { "news:setCamera", "news:setMicrophone", "news:setBoom" }
    },
    {
        id = "vehicle",
        displayName = "Araba Eylemleri",
        icon = "#vehicle-options-vehicle",
        functionName = "veh:options",
        enableMenu = function()
            return (not isDead and IsPedInAnyVehicle(PlayerPedId(), false))
        end
    },
	{
        id = "impound",
        displayName = "Cekici",
        icon = "#impound-vehicle",
        functionName = "mechanic:impound",
        enableMenu = function()
            if (PlayerData.job.name == 'mechanic' or PlayerData.job.name == 'police' and not isDead and #(GetEntityCoords(PlayerPedId()) - vector3(536.24, -181.88, 54.37)) < 10.599) then
                return true
            end
            return false
        end
    }, {
        id = "oxygentank",
        displayName = "Oksijen Deposunu Çıkarın",
        icon = "#oxygen-mask",
        functionName = "RemoveOxyTank",
        enableMenu = function()
            return not isDead and hasOxygenTankOn
        end
    },  
	{
        id = "mdt",
        displayName = "MDT",
        icon = "#mdt",
        functionName = "mdt:radialopen",
        enableMenu = function()
            return (PlayerData.job.name == 'police' and not isDead)
        end
    }



}

newSubMenus = {
    ['general:emotes'] = {
        title = "Emot",
        icon = "#general-emotes",
        functionName = "dp:RecieveMenu"
    },    
    ['general:keysgive'] = {
        title = "Anahtar Ver",
        icon = "#general-keys-give",
        functionName = "SOSAY_Locking:GiveKeys"
    },
    ['general:checkoverself'] = {
        title = "İncele",
        icon = "#general-check-over-self",
        functionName = "Evidence:CurrentDamageList"
    },
    ['general:checktargetstates'] = {
        title = "Hedefi İncele",
        icon = "#general-check-over-target",
        functionName = "requestWounds"
    },
    ['general:checkvehicle'] = {
        title = "Araci İncele",
        icon = "#general-check-vehicle",
        functionName = "towgarage:annoyedBouce"
    },
    ['general:escort'] = {
        title = "Escort",
        icon = "#general-escort",
        functionName = "escortPlayer"
    },
    ['general:putinvehicle'] = {
        title = "Koltuk",
        icon = "#general-put-in-veh",
        functionName = "police:forceEnter"
    },
    ['general:unseatnearest'] = {
        title = "En Yakini Koltuktan Kaldir",
        icon = "#general-unseat-nearest",
        functionName = "unseatPlayer"
    },    
    ['general:flipvehicle'] = {
        title = "Araci Cevir",
        icon = "#general-flip-vehicle",
        functionName = "FlipVehicle"
    },
    ['animations:brave'] = {
        title = "Cesur",
        icon = "#animation-brave",
        functionName = "AnimSet:Brave"
    },
    ['animations:hurry'] = {
        title = "Acele",
        icon = "#animation-hurry",
        functionName = "AnimSet:Hurry"
    },
    ['animations:business'] = {
        title = "İs",
        icon = "#animation-business",
        functionName = "AnimSet:Business"
    },
    ['animations:tipsy'] = {
        title = "İcmis",
        icon = "#animation-tipsy",
        functionName = "AnimSet:Tipsy"
    },
    ['animations:injured'] = {
        title = "Yarali",
        icon = "#animation-injured",
        functionName = "AnimSet:Injured"
    },
    ['animations:tough'] = {
        title = "Zorlu",
        icon = "#animation-tough",
        functionName = "AnimSet:ToughGuy"
    },
    ['animations:sassy'] = {
        title = "Sımarık",
        icon = "#animation-sassy",
        functionName = "AnimSet:Sassy"
    },
    ['animations:sad'] = {
        title = "Uzgun",
        icon = "#animation-sad",
        functionName = "AnimSet:Sad"
    },
    ['animations:posh'] = {
        title = "Luks",
        icon = "#animation-posh",
        functionName = "AnimSet:Posh"
    },
    ['animations:alien'] = {
        title = "Yabanci",
        icon = "#animation-alien",
        functionName = "AnimSet:Alien"
    },
    ['animations:nonchalant'] =
    {
        title = "Sogukkanlı",
        icon = "#animation-nonchalant",
        functionName = "AnimSet:NonChalant"
    },
    ['animations:hobo'] = {
        title = "Serseri",
        icon = "#animation-hobo",
        functionName = "AnimSet:Hobo"
    },
    ['animations:money'] = {
        title = "Para",
        icon = "#animation-money",
        functionName = "AnimSet:Money"
    },
    ['animations:swagger'] = {
        title = "Calım",
        icon = "#animation-swagger",
        functionName = "AnimSet:Swagger"
    },
    ['animations:shady'] = {
        title = "Gölgeli",
        icon = "#animation-shady",
        functionName = "AnimSet:Shady"
    },
    ['animations:maneater'] = {
        title = "Adam Yiyen",
        icon = "#animation-maneater",
        functionName = "AnimSet:ManEater"
    },
    ['animations:chichi'] = {
        title = "ChiChi",
        icon = "#animation-chichi",
        functionName = "AnimSet:ChiChi"
    },
    ['animations:default'] = {
        title = "Standart",
        icon = "#animation-default",
        functionName = "AnimSet:default"
    },
    ['k9:spawn'] = {
        title = "Cagırmak",
        icon = "#k9-spawn",
        functionName = "K9:Create"
    },
    ['k9:delete'] = {
        title = "Dagıstmak",
        icon = "#k9-dismiss",
        functionName = "K9:Delete"
    },
    ['k9:follow'] = {
        title = "Takip",
        icon = "#k9-follow",
        functionName = "K9:Follow"
    },
    ['k9:vehicle'] = {
        title = "İçeri / dışarı alın",
        icon = "#k9-vehicle",
        functionName = "K9:Vehicle"
    },
    ['k9:sit'] = {
        title = "Otur",
        icon = "#k9-sit",
        functionName = "K9:Sit"
    },
    ['k9:lay'] = {
        title = "Koymak",
        icon = "#k9-lay",
        functionName = "K9:Lay"
    },
    ['k9:stand'] = {
        title = "Ayaga Kaldir",
        icon = "#k9-stand",
        functionName = "K9:Stand"
    },
    ['k9:sniff'] = {
        title = "Kisiyi Kokla",
        icon = "#k9-sniff",
        functionName = "K9:Sniff"
    },
    ['k9:sniffvehicle'] = {
        title = "Aracı Kokla",
        icon = "#k9-sniff-vehicle",
        functionName = "sniffVehicle"
    },
    ['k9:huntfind'] = {
        title = "En Yakin Kısıye Saldır",
        icon = "#k9-huntfind",
        functionName = "K9:Huntfind"
    },
    ['blips:gasstations'] = {
        title = "Benzin İstasyonu",
        icon = "#blips-gasstations",
        functionName = "CarPlayerHud:ToggleGas"
    },    
    ['blips:trainstations'] = {
        title = "Tren İstasyonu",
        icon = "#blips-trainstations",
        functionName = "Trains:ToggleTainsBlip"
    },
    ['blips:garages'] = {
        title = "Garaj",
        icon = "#blips-garages",
        functionName = "Garages:ToggleGarageBlip"
    },
    ['blips:barbershop'] = {
        title = "Berber",
        icon = "#blips-barbershop",
        functionName = "hairDresser:ToggleHair"
    },    
    ['blips:tattooshop'] = {
        title = "Dövmeci",
        icon = "#blips-tattooshop",
        functionName = "tattoo:ToggleTattoo"
    },
    ['drivinginstructor:drivingtest'] = {
        title = "Sürücü Kursu",
        icon = "#drivinginstructor-drivingtest",
        functionName = "drivingInstructor:testToggle"
    },
    ['drivinginstructor:submittest'] = {
        title = "Testi Gonder",
        icon = "#drivinginstructor-submittest",
        functionName = "drivingInstructor:submitTest"
    },
    ['judge-raid:checkowner'] = {
        title = "Sahibini Kontrol Et",
        icon = "#judge-raid-check-owner",
        functionName = "appartment:CheckOwner"
    },
    ['judge-raid:seizeall'] = {
        title = "Tum İcerigi Yakala",
        icon = "#judge-raid-seize-all",
        functionName = "appartment:SeizeAll"
    },
    ['judge-raid:takecash'] = {
        title = "Nakit Al",
        icon = "#judge-raid-take-cash",
        functionName = "appartment:TakeCash"
    },
    ['judge-raid:takedm'] = {
        title = "Faturaları Al",
        icon = "#judge-raid-take-dm",
        functionName = "appartment:TakeDM"
    },
    ['cuffs:cuff'] = {
        title = "Kelepcele",
        icon = "#cuffs-cuff",
        functionName = "civ:cuffFromMenu"
    },
    ['cuffs:uncuff'] = {
        title = "Kelepceyi Cöz",
        icon = "#cuffs-uncuff",
        functionName = "police:uncuffMenu"
    },
    ['cuffs:remmask'] = {
        title = "Maskeyi Cıkart",
        icon = "#cuffs-remove-mask",
        functionName = "police:remmask"
    },
    ['cuffs:checkinventory'] = {
        title = "Adamı Ara",
        icon = "#cuffs-check-inventory",
        functionName = "police:checkInventory"
    },
    ['cuffs:unseat'] = {
        title = "İndir",
        icon = "#cuffs-unseat-player",
        functionName = "unseatPlayerCiv"
    },
    ['cuffs:checkphone'] = {
        title = "Telefonu Oku",
        icon = "#cuffs-check-phone",
        functionName = "police:checkPhone"
    },
    ['medic:revive'] = {
        title = "İyilestir(ölüyken)",
        icon = "#medic-revive",
        functionName = "revive"
    },
    ['medic:heal'] = {
        title = "İyilestir",
        icon = "#medic-heal",
        functionName = "ems:heal"
    },
    ['police:cuff'] = {
        title = "Kelepcele",
        icon = "#cuffs-cuff",
        functionName = "police:cuffFromMenu"
    },
    ['police:checkbank'] = {
        title = "Bankasina Bak",
        icon = "#police-check-bank",
        functionName = "police:checkBank"
    },
    ['police:checklicenses'] = {
        title = "Lisanslara Bak",
        icon = "#police-check-licenses",
        functionName = "police:checkLicenses"
    },
    ['police:removeweapons'] = {
        title = "Silah Lisansini Al",
        icon = "#police-action-remove-weapons",
        functionName = "police:removeWeapon"
    },
    ['police:gsr'] = {
        title = "GSR Testi",
        icon = "#police-action-gsr",
        functionName = "police:gsr"
    },
    ['police:dnaswab'] = {
        title = "DNA Testi",
        icon = "#police-action-dna-swab",
        functionName = "evidence:dnaSwab"
    },
    ['police:toggleradar'] = {
        title = "Radar",
        icon = "#police-vehicle-radar",
        functionName = "startSpeedo"
    },
    ['police:runplate'] = {
        title = "Plaka",
        icon = "#police-vehicle-plate",
        functionName = "clientcheckLicensePlate"
    },
    ['police:frisk'] = {
        title = "Üstünü Ara",
        icon = "#police-action-frisk",
        functionName = "police:frisk"
    },

    ['judge:grantDriver'] = {
        title = "Sürücüler",
        icon = "#judge-licenses-grant-drivers",
        functionName = "police:grantDriver"
    }, 
    ['judge:grantBusiness'] = {
        title = "İs",
        icon = "#judge-licenses-grant-business",
        functionName = "police:grantBusiness"
    },  
    ['judge:grantWeapon'] = {
        title = "Silah",
        icon = "#judge-licenses-grant-weapon",
        functionName = "police:grantWeapon"
    },
    ['judge:grantHouse'] = {
        title = "Ev",
        icon = "#judge-licenses-grant-house",
        functionName = "police:grantHouse"
    },
    ['judge:grantBar'] = {
        title = "BAR",
        icon = "#judge-licenses-grant-bar",
        functionName = "police:grantBar"
    },
    ['judge:grantDA'] = {
        title = "Grant DA",
        icon = "#judge-licenses-grant-da",
        functionName = "police:grantDA"
    },
    ['judge:removeDriver'] = {
        title = "Surucuyu Kaldir",
        icon = "#judge-licenses-remove-drivers",
        functionName = "police:removeDriver"
    },
    ['judge:removeBusiness'] = {
        title = "İsi Al",
        icon = "#judge-licenses-remove-business",
        functionName = "police:removeBusiness"
    },
    ['judge:removeWeapon'] = {
        title = "Silahi Al",
        icon = "#judge-licenses-remove-weapon",
        functionName = "police:removeWeapon"
    },
    ['judge:removeHouse'] = {
        title = "Evi Al",
        icon = "#judge-licenses-remove-house",
        functionName = "police:removeHouse"
    },
    ['judge:removeBar'] = {
        title = "Bari Al",
        icon = "#judge-licenses-remove-bar",
        functionName = "police:removeBar"
    },
    ['judge:removeDA'] = {
        title = "Da'yi Al",
        icon = "#judge-licenses-remove-da",
        functionName = "police:removeDA"
    },
    ['judge:denyWeapon'] = {
        title = "Silahi Reddet",
        icon = "#judge-licenses-deny-weapon",
        functionName = "police:denyWeapon"
    },
    ['judge:denyDriver'] = {
        title = "Sürücüleri Reddet",
        icon = "#judge-licenses-deny-drivers",
        functionName = "police:denyDriver"
    },
    ['judge:denyBusiness'] = {
        title = "İsi Reddet",
        icon = "#judge-licenses-deny-business",
        functionName = "police:denyBusiness"
    },
    ['judge:denyHouse'] = {
        title = "Evi Reddet",
        icon = "#judge-licenses-deny-house",
        functionName = "police:denyHouse"
    },
    ['news:setCamera'] = {
        title = "Kamera",
        icon = "#news-job-news-camera",
        functionName = "Cam:ToggleCam"
    },
    ['news:setMicrophone'] = {
        title = "Mikrofon",
        icon = "#news-job-news-microphone",
        functionName = "Mic:ToggleMic"
    },
    ['news:setBoom'] = {
        title = "Tepe Mikrofonu",
        icon = "#news-job-news-boom",
        functionName = "Mic:ToggleBMic"
    },
    ['weed:currentStatusServer'] = {
        title = "Talep Durumu",
        icon = "#weed-cultivation-request-status",
        functionName = "weed:currentStatusServer"
    },   
    ['weed:weedCrate'] = {
        title = "Bir Sandigi Kaldir",
        icon = "#weed-cultivation-remove-a-crate",
        functionName = "weed:weedCrate"
    },
    ['cocaine:currentStatusServer'] = {
        title = "Talep Durumu",
        icon = "#meth-manufacturing-request-status",
        functionName = "cocaine:currentStatusServer"
    },
    ['cocaine:methCrate'] = {
        title = "Bir Sandigi Kaldir",
        icon = "#meth-manufacturing-remove-a-crate",
        functionName = "cocaine:methCrate"
    },
    ["expressions:angry"] = {
        title="Kızgın",
        icon="#expressions-angry",
        functionName = "expressions",
        functionParameters =  { "mood_angry_1" }
    },
    ["expressions:drunk"] = {
        title="Sarhos",
        icon="#expressions-drunk",
        functionName = "expressions",
        functionParameters =  { "mood_drunk_1" }
    },
    ["expressions:dumb"] = {
        title="Aptal",
        icon="#expressions-dumb",
        functionName = "expressions",
        functionParameters =  { "pose_injured_1" }
    },
    ["expressions:electrocuted"] = {
        title="Elektriklenmis",
        icon="#expressions-electrocuted",
        functionName = "expressions",
        functionParameters =  { "electrocuted_1" }
    },
    ["expressions:grumpy"] = {
        title="Huysuz",
        icon="#expressions-grumpy",
        functionName = "expressions", 
        functionParameters =  { "mood_drivefast_1" }
    },
    ["expressions:happy"] = {
        title="Mutlu",
        icon="#expressions-happy",
        functionName = "expressions",
        functionParameters =  { "mood_happy_1" }
    },
    ["expressions:injured"] = {
        title="Yarali",
        icon="#expressions-injured",
        functionName = "expressions",
        functionParameters =  { "mood_injured_1" }
    },
    ["expressions:joyful"] = {
        title="Neseli",
        icon="#expressions-joyful",
        functionName = "expressions",
        functionParameters =  { "mood_dancing_low_1" }
    },
    ["expressions:mouthbreather"] = {
        title="Mouthbreather",
        icon="#expressions-mouthbreather",
        functionName = "expressions",
        functionParameters = { "smoking_hold_1" }
    },
    ["expressions:normal"]  = {
        title="Normal",
        icon="#expressions-normal",
        functionName = "expressions:clear"
    },
    ["expressions:oneeye"]  = {
        title="Tek Goz",
        icon="#expressions-oneeye",
        functionName = "expressions",
        functionParameters = { "pose_aiming_1" }
    },
    ["expressions:shocked"]  = {
        title="Soklanmıs",
        icon="#expressions-shocked",
        functionName = "expressions",
        functionParameters = { "shocked_1" }
    },
    ["expressions:sleeping"]  = {
        title="Uyu",
        icon="#expressions-sleeping",
        functionName = "expressions",
        functionParameters = { "dead_1" }
    },
    ["expressions:smug"]  = {
        title="Kendini Begenmis",
        icon="#expressions-smug",
        functionName = "expressions",
        functionParameters = { "mood_smug_1" }
    },
    ["expressions:speculative"]  = {
        title="Kurgusal",
        icon="#expressions-speculative",
        functionName = "expressions",
        functionParameters = { "mood_aiming_1" }
    },
    ["expressions:stressed"]  = {
        title="Stresli",
        icon="#expressions-stressed",
        functionName = "expressions",
        functionParameters = { "mood_stressed_1" }
    },
    ["expressions:sulking"]  = {
        title="Somurtgan",
        icon="#expressions-sulking",
        functionName = "expressions",
        functionParameters = { "mood_sulk_1" },
    },
    ["expressions:weird"]  = {
        title="Tuhaf",
        icon="#expressions-weird",
        functionName = "expressions",
        functionParameters = { "effort_2" }
    },
    ["expressions:weird2"]  = {
        title="Tuhaf 2",
        icon="#expressions-weird2",
        functionName = "expressions",
        functionParameters = { "effort_3" }
    }
}

RegisterNetEvent("menu:setCuffState")
AddEventHandler("menu:setCuffState", function(pTargetId, pState)
    cuffStates[pTargetId] = pState
end)


RegisterNetEvent("isJudge")
AddEventHandler("isJudge", function()
    isJudge = true
end)

RegisterNetEvent("isJudgeOff")
AddEventHandler("isJudgeOff", function()
    isJudge = false
end)

RegisterNetEvent("np-jobmanager:playerBecameJob")
AddEventHandler("np-jobmanager:playerBecameJob", function(job, name, notify)
    if isMedic and job ~= "ambulance" then isMedic = false end
    if isPolice and job ~= "police" then isPolice = false end
    if isDoctor and job ~= "doctor" then isDoctor = false end
    if isNews and job ~= "reporter" then isNews = false end
    if job == "police" then isPolice = true end
    if job == "ambulance" then isMedic = true end
    if job == "reporter" then isNews = true end
    if job == "doctor" then isDoctor = true end
    myJob = job
end)

RegisterNetEvent('pd:deathcheck')
AddEventHandler('pd:deathcheck', function()
    if not isDead then
        isDead = true
    else
        isDead = false
    end
end)

RegisterNetEvent("drivingInstructor:instructorToggle")
AddEventHandler("drivingInstructor:instructorToggle", function(mode)
    if myJob == "driving instructor" then
        isInstructorMode = mode
    end
end)

RegisterNetEvent("police:currentHandCuffedState")
AddEventHandler("police:currentHandCuffedState", function(pIsHandcuffed, pIsHandcuffedAndWalking)
    isHandcuffedAndWalking = pIsHandcuffedAndWalking
    isHandcuffed = pIsHandcuffed
end)

RegisterNetEvent("menu:hasOxygenTank")
AddEventHandler("menu:hasOxygenTank", function(pHasOxygenTank)
    hasOxygenTankOn = pHasOxygenTank
end)

RegisterNetEvent('enablegangmember')
AddEventHandler('enablegangmember', function(pGangNum)
    gangNum = pGangNum
end)

function GetPlayers()
    local players = {}

    for i = 0, 255 do
        if NetworkIsPlayerActive(i) then
            players[#players+1]= i
        end
    end

    return players
end

function GetClosestPlayer()
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local closestPed = -1
    local ply = PlayerPedId()
    local plyCoords = GetEntityCoords(ply, 0)
    if not IsPedInAnyVehicle(PlayerPedId(), false) then
        for index,value in ipairs(players) do
            local target = GetPlayerPed(value)
            if(target ~= ply) then
                local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
                local distance = #(vector3(targetCoords["x"], targetCoords["y"], targetCoords["z"]) - vector3(plyCoords["x"], plyCoords["y"], plyCoords["z"]))
                if(closestDistance == -1 or closestDistance > distance) and not IsPedInAnyVehicle(target, false) then
                    closestPlayer = value
                    closestPed = target
                    closestDistance = distance
                end
            end
        end
        return closestPlayer, closestDistance, closestPed
    end
end

trainstations = {
    {-547.34057617188,-1286.1752929688,25.3059978411511},
    {-892.66284179688,-2322.5168457031,-13.246466636658},
    {-1100.2299804688,-2724.037109375,-8.3086919784546},
    {-1071.4924316406,-2713.189453125,-8.9240007400513},
    {-875.61907958984,-2319.8686523438,-13.241264343262},
    {-536.62890625,-1285.0009765625,25.301458358765},
    {270.09558105469,-1209.9177246094,37.465930938721},
    {-287.13568115234,-327.40936279297,8.5491418838501},
    {-821.34295654297,-132.45257568359,18.436864852905},
    {-1359.9794921875,-465.32354736328,13.531299591064},
    {-498.96591186523,-680.65930175781,10.295949935913},
    {-217.97073364258,-1032.1605224609,28.724565505981},
    {113.90325164795,-1729.9976806641,28.453630447388},
    {117.33223724365,-1721.9318847656,28.527353286743},
    {-209.84713745117,-1037.2414550781,28.722997665405},
    {-499.3971862793,-665.58514404297,10.295639038086},
    {-1344.5224609375,-462.10494995117,13.531820297241},
    {-806.85192871094,-141.39852905273,18.436403274536},
    {-302.21514892578,-327.28854370117,8.5495929718018},
    {262.01733398438,-1198.6135253906,37.448017120361},
    {2072.4086914063,1569.0856933594,76.712524414063},
    {664.93090820313,-997.59942626953,22.261747360229},
    {190.62687683105,-1956.8131103516,19.520135879517},
    {2611.0278320313,1675.3806152344,26.578210830688},
    {2615.3901367188,2934.8666992188,39.312232971191},
    {2885.5346679688,4862.0146484375,62.551517486572},
    {47.061096191406,6280.8969726563,31.580261230469},
    {2002.3624267578,3619.8029785156,38.568252563477},
    {2609.7016601563,2937.11328125,39.418235778809}
}
