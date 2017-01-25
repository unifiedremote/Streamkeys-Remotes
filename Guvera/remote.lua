local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("guvera", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Guvera site
actions.launch = function ()
	os.open("https://www.guvera.com");
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
	streamkeys.action("guvera", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("guvera", "playPrev");
end

--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("guvera", "pause");
	else
		streamkeys.action("guvera", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("guvera", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("guvera", "pause");
end