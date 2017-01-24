local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("myspace", true);
end

events.blur = function ()
	uninit();
end

--@help Launch MySpace site
actions.launch = function ()
	os.open("http://www.myspace.com");
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
	streamkeys.action("myspace", "mute");
end

--@help Next track
actions.next = function()
	streamkeys.action("myspace", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("myspace", "playPrev");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("myspace", "playPause");
end