local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("jamendo", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Jamendo site
actions.launch = function ()
	os.open("https://www.jamendo.com");
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
	streamkeys.action("jamendo", "mute");
end

--@help Next track
actions.next = function()
	streamkeys.action("jamendo", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("jamendo", "playPrev");
end

--@help Like track
actions.like = function()
	streamkeys.action("jamendo", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("jamendo", "dislike");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("jamendo", "playPause");
end