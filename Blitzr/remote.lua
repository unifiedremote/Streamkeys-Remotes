local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("blitzr", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Blitzr site
actions.launch = function ()
	os.open("http://www.blitzr.com");
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
	streamkeys.action("blitzr", "mute");
end

--@help Next track
actions.next = function()
	streamkeys.action("blitzr", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("blitzr", "playPrev");
end

--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("blitzr", "pause");
	else
		streamkeys.action("blitzr", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("blitzr", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("blitzr", "pause");
end