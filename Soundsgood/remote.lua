local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("soundsgood", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Soundsgood.co site
actions.launch = function ()
	os.open("http://www.soundsgood.co");
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
	streamkeys.action("soundsgood", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("soundsgood", "playPrev");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("soundsgood", "playPause");
end