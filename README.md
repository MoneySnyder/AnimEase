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

To animate with ease, call the `run` method with the following arguments:

- **`easingInfo`**: A dictionary that outlines the animation's easing characteristics. It includes:
  - **`style`** (`s` as an alternative): Specifies the type of easing function (e.g., "Quad", "Cubic"). Defaults to "Linear" if not provided.
  - **`direction`** (`d` as an alternative): Determines the easing direction — "In" for accelerating, "Out" for decelerating, and "InOut" for both. Defaults to "InOut".
  - **`time`** (`t` as an alternative): The total duration of the easing effect, measured in seconds. The default duration is 1 second.

The keys in this dictionary can be specified using their full names (`style`, `direction`, `time`) or their shorthand versions (`s`, `d`, `t`). Additionally, uppercase versions of these keys are also accepted (`Style`, `Direction`, `Time`).

- **`callback`**: A function that is executed with the eased value. This is where you apply the eased value to your animation.
