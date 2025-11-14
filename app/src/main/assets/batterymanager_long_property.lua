-- This file is part of XPrivacyLua.

-- XPrivacyLua is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.

-- XPrivacyLua is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.

-- You should have received a copy of the GNU General Public License
-- along with XPrivacyLua.  If not, see <http://www.gnu.org/licenses/>.

-- Copyright 2017-2019 Marcel Bokhorst (M66B)
-- Enhanced 2025 Claude Privacy

function after(hook, param)
    local result = param:getResult()

    -- Return standard fake battery values to prevent fingerprinting
    local Long = luajava.bindClass('java.lang.Long')
    local property = param:getArgument(0)

    local fake = Long:valueOf(0)

    -- BATTERY_PROPERTY_CHARGE_COUNTER = 1
    if property == 1 then
        fake = Long:valueOf(3000000)  -- 3000 mAh
    -- BATTERY_PROPERTY_CURRENT_NOW = 2
    elseif property == 2 then
        fake = Long:valueOf(-500000)  -- -500 mA
    -- BATTERY_PROPERTY_CURRENT_AVERAGE = 3
    elseif property == 3 then
        fake = Long:valueOf(-500000)  -- -500 mA average
    -- BATTERY_PROPERTY_CAPACITY = 4
    elseif property == 4 then
        fake = Long:valueOf(75)  -- 75%
    -- BATTERY_PROPERTY_ENERGY_COUNTER = 5
    elseif property == 5 then
        fake = Long:valueOf(11100000)  -- 11.1 Wh
    end

    param:setResult(fake)
    return true, result, fake
end
