--[[
    File: AnimEase.lua
    Author(s): eliphant
    Created: 02/14/2024 @ 18:23:14
    Version: 1.0.0

    Description:
        No description provided.

    Dependencies:
        No dependencies required.

    Documentation:
        No documentation provided.
--]]

--=> Class Root

local AnimEase = {}

--=> Exports & Types & Defaults

export type AnimEase = {
	easingFunction: string,
	easingDirection: string,
	easingTime: number,
	easingStyle: (alpha: number) -> number,
}

--=> Roblox Services
local RunService = game:GetService("RunService")

--=> Dependencies

local EasingStyles = require(script.EasingStyles)

--=> Constructor

function AnimEase.run(
	easingInfo: {
		s: string,
		d: string,
		t: number,
		style: string,
		direction: string,
		time: number,
		Style: string,
		Time: number,
		Direction: string,
	},
	callback: () -> ()
): AnimEase
	local easingFunction = easingInfo.s or easingInfo.style or easingInfo.Style or "Linear"
	local easingDirection = easingInfo.d or easingInfo.direction or easingInfo.Direction or "InOut"
	local easingTime = easingInfo.t or easingInfo.time or easingInfo.Time or 1
	local easingStyle = EasingStyles[easingFunction][easingDirection]

    local animationConnection: RBXScriptConnection | nil
    local elapsedTime = 0

    animationConnection = RunService.Heartbeat:Connect(function(deltaTime: number)
        elapsedTime += deltaTime / easingTime
        
        if elapsedTime >= 1 then
            elapsedTime = 1
            animationConnection:Disconnect()
            animationConnection = nil
        end

        callback(easingStyle(elapsedTime))
    end)
end

--=> Return Class

return AnimEase
