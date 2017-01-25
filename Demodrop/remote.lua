local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("demodrop", true);
end

events.blur = function ()
	uninit();
end

--@help Launch DemoDrop site
actions.launch = function ()
	os.open("http://www.demodrop.com");
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
	streamkeys.action("demodrop", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("demodrop", "playPrev");
end

--@help Like track
actions.like = function()
	streamkeys.action("demodrop", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("demodrop", "dislike");
end

--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("demodrop", "pause");
	else
		streamkeys.action("demodrop", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("demodrop", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("demodrop", "pause");
end