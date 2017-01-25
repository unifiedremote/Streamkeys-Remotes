local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("ambientsleepingpill", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Ambient Sleeping Pill site
actions.launch = function ()
	os.open("http://www.ambientsleepingpill.com");
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
		streamkeys.action("ambientsleepingpill", "pause");
	else
		streamkeys.action("ambientsleepingpill", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("ambientsleepingpill", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("ambientsleepingpill", "pause");
end