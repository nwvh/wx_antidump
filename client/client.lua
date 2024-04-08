local loaded = {}
local handler = nil
exports('loadFile', function()
    local toFormat = tostring((GetInvokingResource()):lower())
    RegisterNetEvent(('wx_antidump:load:%s'):format(toFormat))
    handler = AddEventHandler(('wx_antidump:load:%s'):format(toFormat), function(code)
        if loaded[toFormat] then return end
        assert(load(code))()
        loaded[toFormat] = true
    end)
    TriggerServerEvent('wx_antidump:request', toFormat)
    SetTimeout(1500, function()
        RemoveEventHandler(handler)
        handler = nil
    end)
end)
