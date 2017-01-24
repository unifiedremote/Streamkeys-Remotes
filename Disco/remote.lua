local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("disco", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Disco.io site
actions.launch = function ()
	os.open("http://www.disco.io");
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
	streamkeys.action("disco", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("disco", "playPrev");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("disco", "playPause");
end