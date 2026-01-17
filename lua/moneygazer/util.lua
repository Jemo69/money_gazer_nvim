local M = {}

--- Calculate luminance of a hex color
---@param hex string Hex color (#RRGGBB)
---@return number
function M.luminance(hex)
    hex = hex:gsub('#', '')
    local r = tonumber(hex:sub(1, 2), 16) / 255
    local g = tonumber(hex:sub(3, 4), 16) / 255
    local b = tonumber(hex:sub(5, 6), 16) / 255

    local function channel(c)
        return c <= 0.03928 and c / 12.92 or math.pow((c + 0.055) / 1.055, 2.4)
    end

    return 0.2126 * channel(r) + 0.7152 * channel(g) + 0.0722 * channel(b)
end

--- Calculate contrast ratio between two hex colors
---@param fg string Foreground hex color
---@param bg string Background hex color
---@return number Contrast ratio
function M.contrast_ratio(fg, bg)
    local l1 = M.luminance(fg)
    local l2 = M.luminance(bg)
    local lighter = math.max(l1, l2)
    local darker = math.min(l1, l2)
    return (lighter + 0.05) / (darker + 0.05)
end

--- Check if contrast meets WCAG AA standard (4.5:1)
---@param fg string Foreground hex color
---@param bg string Background hex color
---@param large_text boolean Whether text is large (allows 3:1)
---@return boolean meets_aa, number ratio
function M.check_aa(fg, bg, large_text)
    large_text = large_text or false
    local ratio = M.contrast_ratio(fg, bg)
    local required = large_text and 3.0 or 4.5
    return ratio >= required, ratio
end

--- Check if contrast meets WCAG AAA standard (7:1)
---@param fg string Foreground hex color
---@param bg string Background hex color
---@param large_text boolean Whether text is large (allows 4.5:1)
---@return boolean meets_aaa, number ratio
function M.check_aaa(fg, bg, large_text)
    large_text = large_text or false
    local ratio = M.contrast_ratio(fg, bg)
    local required = large_text and 4.5 or 7.0
    return ratio >= required, ratio
end

--- Lighten or darken a hex color
---@param hex string Hex color (#RRGGBB)
---@param amount number -1.0 to 1.0 (negative darkens, positive lightens)
---@return string New hex color
function M.adjust_brightness(hex, amount)
    hex = hex:gsub('#', '')
    local r = tonumber(hex:sub(1, 2), 16)
    local g = tonumber(hex:sub(3, 4), 16)
    local b = tonumber(hex:sub(5, 6), 16)

    if amount > 0 then
        r = math.min(255, math.floor(r + (255 - r) * amount))
        g = math.min(255, math.floor(g + (255 - g) * amount))
        b = math.min(255, math.floor(b + (255 - b) * amount))
    else
        r = math.max(0, math.floor(r + r * amount))
        g = math.max(0, math.floor(g + g * amount))
        b = math.max(0, math.floor(b + b * amount))
    end

    return string.format('#%02x%02x%02x', r, g, b)
end

--- Blend two hex colors
---@param hex1 string First hex color
---@param hex2 string Second hex color
---@param ratio number 0.0 to 1.0 (0 = hex1, 1 = hex2)
---@return string Blended hex color
function M.blend(hex1, hex2, ratio)
    hex1 = hex1:gsub('#', '')
    hex2 = hex2:gsub('#', '')

    local r1 = tonumber(hex1:sub(1, 2), 16)
    local g1 = tonumber(hex1:sub(3, 4), 16)
    local b1 = tonumber(hex1:sub(5, 6), 16)

    local r2 = tonumber(hex2:sub(1, 2), 16)
    local g2 = tonumber(hex2:sub(3, 4), 16)
    local b2 = tonumber(hex2:sub(5, 6), 16)

    local r = math.floor(r1 + (r2 - r1) * ratio)
    local g = math.floor(g1 + (g2 - g1) * ratio)
    local b = math.floor(b1 + (b2 - b1) * ratio)

    return string.format('#%02x%02x%02x', r, g, b)
end

--- Convert hex to RGB table
---@param hex string Hex color (#RRGGBB)
---@return table {r, g, b}
function M.hex_to_rgb(hex)
    hex = hex:gsub('#', '')
    return {
        r = tonumber(hex:sub(1, 2), 16),
        g = tonumber(hex:sub(3, 4), 16),
        b = tonumber(hex:sub(5, 6), 16),
    }
end

--- Convert RGB to hex
---@param r number Red (0-255)
---@param g number Green (0-255)
---@param b number Blue (0-255)
---@return string Hex color (#RRGGBB)
function M.rgb_to_hex(r, g, b)
    return string.format('#%02x%02x%02x', r, g, b)
end

--- Get complementary color
---@param hex string Hex color
---@return string Complementary hex color
function M.complementary(hex)
    hex = hex:gsub('#', '')
    local r = tonumber(hex:sub(1, 2), 16)
    local g = tonumber(hex:sub(3, 4), 16)
    local b = tonumber(hex:sub(5, 6), 16)

    return string.format('#%02x%02x%02x', 255 - r, 255 - g, 255 - b)
end

--- Darken a hex color against a background
---@param color string Hex color to darken
---@param amount number How much to darken (0.0 to 1.0)
---@param bg string Background color (for alpha blending)
---@return string Darkened/blended hex color
function M.darken(color, amount, bg)
    if not bg or bg == 'NONE' then
        return M.adjust_brightness(color, -amount)
    end
    return M.blend(color, bg, amount)
end

return M
