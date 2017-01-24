local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("brain", undefined);
end

events.blur = function ()
	uninit();
end

--@help Launch BrainFM site
actions.launch = function ()
	os.open("http://brain.fm");
end

--@help Lower volume
actions.volume_down = function()
	keyboard.stroke("volume_down");
end

--@help Raise volume
actions.volume_up = function()
	keyboard.stroke("volume_up");
end

--@help Mute volume
actions.volume_mute = function()
	keyboard.stroke("volume_mute");
end

local playing = false;
--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("brain", "pause");
	else
		streamkeys.action("brain", "play");
	end
  playing = not playing;
end

--@help Resume playback
actions.play = function()
	streamkeys.action("brain", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("brain", "pause");
end