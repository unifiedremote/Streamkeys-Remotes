local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("shortorange", true);
end

events.blur = function ()
	uninit();
end

--@help Launch ShortOrange site
actions.launch = function ()
	os.open("http://www.shortorange.com");
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
	streamkeys.action("shortorange", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("shortorange", "playPrev");
end

--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("shortorange", "pause");
	else
		streamkeys.action("shortorange", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("shortorange", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("shortorange", "pause");
end