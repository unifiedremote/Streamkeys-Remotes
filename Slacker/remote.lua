local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("slacker", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Slacker site
actions.launch = function ()
	os.open("http://www.slacker.com");
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
	streamkeys.action("slacker", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("slacker", "playPrev");
end

--@help Like track
actions.like = function()
	streamkeys.action("slacker", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("slacker", "dislike");
end

--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("slacker", "pause");
	else
		streamkeys.action("slacker", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("slacker", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("slacker", "pause");
end