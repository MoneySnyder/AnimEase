# AnimEase

AnimEase is a Lua library designed to facilitate the creation of smooth animations in Roblox games. It provides a simple, yet powerful interface for applying easing functions to animations, allowing for a more polished and professional game experience.

## Features

- **Easing Functions**: Includes a variety of easing functions such as Linear, Quad, Cubic, etc., to create smooth animations.
- **Directional Easing**: Supports easing directions including In, Out, and InOut, giving you control over the animation's acceleration.
- **Time-Based Easing**: Allows for precise control over the duration of the easing effect.

## Installation

To use AnimEase in your Roblox project, simply place the `AnimEase.lua` script and its dependencies into a ModuleScript within your game's workspace or ReplicatedStorage.

## Usage

To use AnimEase, you'll need to require it in your script and then call the `run` method with the desired easing information and a callback function that will be executed with the eased value.

Example:

```lua
local AnimEase = require(path.to.AnimEase)

AnimEase.run({
    style = "Quad",
    direction = "InOut",
    time = 2,
}, function(easedValue)
    -- Your animation code here, using the easedValue
end)
```

## Parameters
The run method expects two parameters:

easingInfo: A table containing the easing configuration.
s or style: The easing function to use (default: "Linear").
d or direction: The direction of the easing (default: "InOut").
t or time: The duration of the easing in seconds (default: 1).
callback: A function that will be called with the eased value. This function is where you should apply the eased value to your animation.
