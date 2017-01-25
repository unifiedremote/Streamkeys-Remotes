local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("netflix", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Netflix site
actions.launch = function ()
	os.open("http://www.netflix.com");
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
	streamkeys.action("netflix", "mute");
end

--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("netflix", "pause");
	else
		streamkeys.action("netflix", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("netflix", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("netflix", "pause");
end