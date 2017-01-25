local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("beatport", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Beatport site
actions.launch = function ()
	os.open("https://www.beatport.com");
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
	streamkeys.action("beatport", "mute");
end

--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("beatport", "pause");
	else
		streamkeys.action("beatport", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("beatport", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("beatport", "pause");
end