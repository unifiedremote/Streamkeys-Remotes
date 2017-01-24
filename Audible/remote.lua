local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("audible", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Audible site
actions.launch = function ()
	os.open("http://www.audible.com");
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

--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("audible", "pause");
	else
		streamkeys.action("audible", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("audible", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("audible", "pause");
end