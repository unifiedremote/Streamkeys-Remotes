local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("somafm", true);
end

events.blur = function ()
	uninit();
end

--@help Launch SomaFM site
actions.launch = function ()
	os.open("http://somafm.com");
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

--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("somafm", "pause");
	else
		streamkeys.action("somafm", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("somafm", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("somafm", "pause");
end