local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("xiami", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Xiami site
actions.launch = function ()
	os.open("http://www.xiami.com");
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
	streamkeys.action("xiami", "mute");
end

--@help Next track
actions.next = function()
	streamkeys.action("xiami", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("xiami", "playPrev");
end

--@help Like track
actions.like = function()
	streamkeys.action("xiami", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("xiami", "dislike");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("xiami", "playPause");
end