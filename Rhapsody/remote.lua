local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("rhapsody", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Rhapsody site
actions.launch = function ()
	os.open("http://www.rhapsody.com");
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
	streamkeys.action("rhapsody", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("rhapsody", "playPrev");
end

--@help Like track
actions.like = function()
	streamkeys.action("rhapsody", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("rhapsody", "dislike");
end

--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("rhapsody", "pause");
	else
		streamkeys.action("rhapsody", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("rhapsody", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("rhapsody", "pause");
end