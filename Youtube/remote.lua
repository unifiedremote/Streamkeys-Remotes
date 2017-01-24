local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("youtube", true);
end

events.blur = function ()
	uninit();
end

--@help Launch YouTube site
actions.launch = function ()
	os.open("http://www.youtube.com");
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
	streamkeys.action("youtube", "mute");
end

--@help Next track
actions.next = function()
	streamkeys.action("youtube", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("youtube", "playPrev");
end

--@help Like track
actions.like = function()
	streamkeys.action("youtube", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("youtube", "dislike");
end

--@help Restart track
actions.restart = function()
	streamkeys.action("youtube", "restart");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("youtube", "playPause");
end

--@help Resume playback
actions.play = function()
	streamkeys.action("youtube", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("youtube", "pause");
end