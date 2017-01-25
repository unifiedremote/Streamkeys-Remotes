local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("di", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Di.fm site
actions.launch = function ()
	os.open("http://www.di.fm");
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
	streamkeys.action("di", "mute");
end

--@help Like track
actions.like = function()
	streamkeys.action("di", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("di", "dislike");
end

--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("di", "pause");
	else
		streamkeys.action("di", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("di", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("di", "pause");
end