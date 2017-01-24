local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("anghami", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Anghami site
actions.launch = function ()
	os.open("https://www.anghami.com");
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
	streamkeys.action("anghami", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("anghami", "playPrev");
end

--@help Like track
actions.like = function()
	streamkeys.action("anghami", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("anghami", "dislike");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("anghami", "playPause");
end