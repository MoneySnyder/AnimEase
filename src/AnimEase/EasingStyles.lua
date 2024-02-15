local function easeOutBounce(x) 
    return x < 1 / 2.75 and 7.5625 * x * x or x < 2 / 2.75 and 7.5625 * (x - 1.5 / 2.75) * (x - 1.5 / 2.75) + 0.75 or x < 2.5 / 2.75 and 7.5625 * (x - 2.25 / 2.75) * (x - 2.25 / 2.75) + 0.9375 or 7.5625 * (x - 2.625 / 2.75) * (x - 2.625 / 2.75) + 0.984375 
end

return {
    ["Sine"] = {
        ["In"] = function(x) return 1 - math.cos((x * math.pi) / 2) end,
        ["Out"] = function(x) return math.sin((x * math.pi) / 2) end,
        ["InOut"] = function(x) return -(math.cos(math.pi * x) - 1) / 2 end
    },

    ["Quad"] = {
        ["In"] = function(x) return x * x end,
        ["Out"] = function(x) return 1 - (1 - x) * (1 - x) end,
        ["InOut"] = function(x) return x < 0.5 and 2 * x * x or 1 - math.pow(-2 * x + 2, 2) / 2 end
    },

    ["Cubic"] = {
        ["In"] = function(x) return x * x * x end,
        ["Out"] = function(x) return 1 - math.pow(1 - x, 3) end,
        ["InOut"] = function(x) return x < 0.5 and 4 * x * x * x or 1 - math.pow(-2 * x + 2, 3) / 2 end
    },

    ["Quint"] = {
        ["In"] = function(x) return x * x * x * x * x end,
        ["Out"] = function(x) return 1 - math.pow(1 - x, 5) end,
        ["InOut"] = function(x) return x < 0.5 and 16 * x * x * x * x * x or 1 - math.pow(-2 * x + 2, 5) / 2 end
    },

    ["Expo"] = {
        ["In"] = function(x) return x == 0 and 0 or math.pow(2, 10 * x - 10) end,
        ["Out"] = function(x) return x == 1 and 1 or 1 - math.pow(2, -10 * x) end,
        ["InOut"] = function(x) return x == 0 and 0 or x == 1 and 1 or x < 0.5 and math.pow(2, 20 * x - 10) / 2 or (2 - math.pow(2, -20 * x + 10)) / 2 end
    },

    ["Circ"] = {
        ["In"] = function(x) return 1 - math.sqrt(1 - x * x) end,
        ["Out"] = function(x) return math.sqrt(1 - (x - 1) * (x - 1)) end,
        ["InOut"] = function(x) return x < 0.5 and (1 - math.sqrt(1 - 4 * x * x)) / 2 or (math.sqrt(1 - (-2 * x + 2) * (-2 * x + 2)) + 1) / 2 end
    },

    ["Back"] = {
        ["In"] = function(x) return 2.70158 * x * x * x - 1.70158 * x * x end,
        ["Out"] = function(x) return 1 + 2.70158 * math.pow(x - 1, 3) + 1.70158 * math.pow(x - 1, 2) end,
        ["InOut"] = function(x) return x < 0.5 and (math.pow(2 * x, 2) * ((2.5949095 + 1) * 2 * x - 2.5949095)) / 2 or (math.pow(2 * x - 2, 2) * ((2.5949095 + 1) * (x * 2 - 2) + 2.5949095) + 2) / 2 end
    },

    ["Elastic"] = {
        ["In"] = function(x) return x == 0 and 0 or x == 1 and 1 or -math.pow(2, 10 * x - 10) * math.sin((x * 10 - 10.75) * (2 * math.pi) / 3) end,
        ["Out"] = function(x) return x == 0 and 0 or x == 1 and 1 or math.pow(2, -10 * x) * math.sin((x * 10 - 0.75) * (2 * math.pi) / 3) + 1 end,
        ["InOut"] = function(x) return x == 0 and 0 or x == 1 and 1 or x < 0.5 and -math.pow(2, 20 * x - 10) * math.sin((20 * x - 11.125) * (2 * math.pi) / 4.5) / 2 or math.pow(2, -20 * x + 10) * math.sin((20 * x - 11.125) * (2 * math.pi) / 4.5) / 2 + 1 end
    },

    ["Bounce"] = {
        ["In"] = function(x) return 1 - easeOutBounce(1 - x) end,
        ["Out"] = easeOutBounce,
        ["InOut"] = function(x) return x < 0.5 and (1 - easeOutBounce(1 - 2 * x)) / 2 or (1 + easeOutBounce(2 * x - 1)) / 2 end
    }
}