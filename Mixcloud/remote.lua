local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("mixcloud", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Mixcloud site
actions.launch = function ()
	os.open("http://www.mixcloud.com");
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
	streamkeys.action("mixcloud", "mute");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("mixcloud", "playPause");
end