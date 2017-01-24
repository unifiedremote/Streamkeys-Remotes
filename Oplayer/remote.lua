local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("oplayer", true);
end

events.blur = function ()
	uninit();
end

--@help Launch oPlayer site
actions.launch = function ()
	os.open("http://oplayer.org");
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
	streamkeys.action("oplayer", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("oplayer", "playPrev");
end

--@help Like track
actions.like = function()
	streamkeys.action("oplayer", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("oplayer", "dislike");
end

--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("oplayer", "pause");
	else
		streamkeys.action("oplayer", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("oplayer", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("oplayer", "pause");
end