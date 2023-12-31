local authorizedIDs = {
    ['steam:110000103fd1bb1'] = true,
    ['license:123456789abcdef'] = true,
}

local function isPlayerAuthorized(playerID)
    for _, id in ipairs(GetPlayerIdentifiers(playerID)) do
        if authorizedIDs[id] then
            return true
        end
    end
    return false
end

RegisterCommand('announce', function(source, args, rawCommand)
    if source ~= 0 and not isPlayerAuthorized(source) then
        TriggerClientEvent('chat:addMessage', source, {
            color = {255, 0, 0},
            args = {'SYSTEM', 'You are not authorized to use this command.'}
        })
        return
    end

    if #args < 1 then
        TriggerClientEvent('chat:addMessage', source, {
            color = {255, 255, 0},
            args = {'SYSTEM', 'Usage: /announce [message]'}
        })
        return
    end

    local announcement = table.concat(args, " ")
    TriggerClientEvent('chat:addMessage', -1, {
        color = {0, 255, 0},
        args = {'Announcement', announcement}
    })
end, false)
