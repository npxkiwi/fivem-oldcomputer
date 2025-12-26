---@class FuelUtils
local utils = {}


---Used to debug prints
---@param _msg string The message
---@param _type string The type of debug print
utils.dbg = function(_msg,_type)
    if not Config.DeveloperMode or not _msg or not _type then
        return
    end
    local msg<const> = tostring(_msg)
    if _type == 'error' then
        lib.print.error(msg)
    elseif _type == 'warn' then
        lib.print.warn(msg)
    elseif _type == 'info' then
        lib.print.info(msg)
    elseif _type == 'debug' then
        lib.print.debyg(msg)
    end
end

return utils