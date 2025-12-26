---@class FuelUtils
local utils = {}

utils.dbg = function(_msg,_type)
    if not _msg or not _type then
        return
    end
end

return utils