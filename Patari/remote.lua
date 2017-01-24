local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("patari", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Patari site
actions.launch = function ()
	os.open("http://patari.pk");
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

--@help Next track
actions.next = function()
	streamkeys.action("patari", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("patari", "playPrev");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("patari", "playPause");
end