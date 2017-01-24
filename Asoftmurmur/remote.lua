local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("asoftmurmur", true);
end

events.blur = function ()
	uninit();
end

--@help Launch A Soft Murmur site
actions.launch = function ()
	os.open("http://www.asoftmurmur.com");
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
	streamkeys.action("asoftmurmur", "mute");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("asoftmurmur", "playPause");
end