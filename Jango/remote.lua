local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("jango", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Jango site
actions.launch = function ()
	os.open("http://www.jango.com");
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

--@help Like track
actions.like = function()
	streamkeys.action("jango", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("jango", "dislike");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("jango", "playPause");
end