local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("cubic", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Cubic.fm site
actions.launch = function ()
	os.open("http://www.cubic.fm");
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
	streamkeys.action("cubic", "mute");
end

--@help Next track
actions.next = function()
	streamkeys.action("cubic", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("cubic", "playPrev");
end

--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("cubic", "pause");
	else
		streamkeys.action("cubic", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("cubic", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("cubic", "pause");
end