local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("soundcloud", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Soundcloud site
actions.launch = function ()
	os.open("http://www.soundcloud.com");
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
	streamkeys.action("soundcloud", "mute");
end

--@help Next track
actions.next = function()
	streamkeys.action("soundcloud", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("soundcloud", "playPrev");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("soundcloud", "playPause");
end