local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("amazon", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Amazon Cloud Player site
actions.launch = function ()
	os.open("https://www.amazon.com/gp/dmusic/cloudplayer/player");
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
	streamkeys.action("amazon", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("amazon", "playPrev");
end

--@help Like track
actions.like = function()
	streamkeys.action("amazon", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("amazon", "dislike");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("amazon", "playPause");
end