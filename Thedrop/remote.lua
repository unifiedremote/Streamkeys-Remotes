local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("thedrop", true);
end

events.blur = function ()
	uninit();
end

--@help Launch TheDrop site
actions.launch = function ()
	os.open("https://www.thedrop.club");
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
	streamkeys.action("thedrop", "mute");
end

--@help Next track
actions.next = function()
	streamkeys.action("thedrop", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("thedrop", "playPrev");
end

--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("thedrop", "pause");
	else
		streamkeys.action("thedrop", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("thedrop", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("thedrop", "pause");
end