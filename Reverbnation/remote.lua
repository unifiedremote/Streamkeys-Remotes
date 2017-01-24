local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("reverbnation", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Reverb Nation site
actions.launch = function ()
	os.open("http://www.reverbnation.com");
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
	streamkeys.action("reverbnation", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("reverbnation", "playPrev");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("reverbnation", "playPause");
end

--@help Resume playback
actions.play = function()
	streamkeys.action("reverbnation", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("reverbnation", "pause");
end