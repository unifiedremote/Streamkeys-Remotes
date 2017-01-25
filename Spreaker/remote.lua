local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("spreaker", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Spreaker site
actions.launch = function ()
	os.open("http://www.spreaker.com");
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
	streamkeys.action("spreaker", "mute");
end

--@help Next track
actions.next = function()
	streamkeys.action("spreaker", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("spreaker", "playPrev");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("spreaker", "playPause");
end