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

function before(hook, param)
    -- Get the DisplayMetrics object from arguments
    local metrics = param:getArgument(0)
    if metrics == nil then
        return false
    end

    -- Set common fake display metrics (1080x1920, 420dpi - common Android resolution)
    metrics:set('widthPixels', 1080)
    metrics:set('heightPixels', 1920)
    metrics:set('density', 2.625)  -- 420dpi / 160
    metrics:set('densityDpi', 420)
    metrics:set('scaledDensity', 2.625)
    metrics:set('xdpi', 420.0)
    metrics:set('ydpi', 420.0)

    return true
end
