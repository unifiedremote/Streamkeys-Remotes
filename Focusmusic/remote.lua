local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("focusmusic", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Focusmusic site
actions.launch = function ()
	os.open("https://focusmusic.fm/");
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
	streamkeys.action("focusmusic", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("focusmusic", "playPrev");
end

--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("focusmusic", "pause");
	else
		streamkeys.action("focusmusic", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("focusmusic", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("focusmusic", "pause");
end