local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("songza", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Songza site
actions.launch = function ()
	os.open("http://www.songza.com");
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
	streamkeys.action("songza", "mute");
end

--@help Like track
actions.like = function()
	streamkeys.action("songza", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("songza", "dislike");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("songza", "playPause");
end