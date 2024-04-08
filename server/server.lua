local load = {}
RegisterNetEvent('wx_antidump:request')
AddEventHandler('wx_antidump:request', function(resource)
    if load[source] == resource then
        print(("[WX AntiDump] [WARNING] Player [^2%s^7] ^3%s^7 has been kicked. This player tried to load the resource ^5%s^7 multiple times, most likely with executor.")
            :format(source, GetPlayerName(source), resource))
        return DropPlayer(source,
            "[WX AntiDump] You think you're so smart, huh?")
    end
    load[source] = resource

    local file = io.open(
        (GetResourcePath(GetCurrentResourceName())):gsub('//', '/') .. "/code/" .. wx.Resources[resource], "r")
    local content = file:read("*a")
    if not content then
        return ("print('Attempted to load invalid file(s): %s. Invoking Resource: %s')"):format(
            wx.Resources[resource], resource)
    end
    file:close()
    TriggerClientEvent(('wx_antidump:load:%s'):format(resource), source, content)
end)


-- anti skid method
local res = GetCurrentResourceName()
local author = GetResourceMetadata(res, 'author', 0)

if author ~= 'wx / woox' then
    for i = 1, 999 do
        print(
            "I have noticed that you replaced the author in the resource manifest. Are you trying to claim that this is your resource? ☹️")
    end
end
