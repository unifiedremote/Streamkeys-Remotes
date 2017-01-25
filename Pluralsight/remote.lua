local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("pluralsight", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Pluralsight site
actions.launch = function ()
	os.open("https://app.pluralsight.com");
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
	streamkeys.action("pluralsight", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("pluralsight", "playPrev");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("pluralsight", "playPause");
end

--@help Resume playback
actions.play = function()
	streamkeys.action("pluralsight", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("pluralsight", "pause");
end