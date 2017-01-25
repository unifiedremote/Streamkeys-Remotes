local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("spotify", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Spotify Web Player site
actions.launch = function ()
	os.open("http://www.spotify.com");
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
	streamkeys.action("spotify", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("spotify", "playPrev");
end

--@help Like track
actions.like = function()
	streamkeys.action("spotify", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("spotify", "dislike");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("spotify", "playPause");
end

--@help Resume playback
actions.play = function()
	streamkeys.action("spotify", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("spotify", "pause");
end