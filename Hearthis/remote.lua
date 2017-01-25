local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("hearthis", true);
end

events.blur = function ()
	uninit();
end

--@help Launch HearThis.at site
actions.launch = function ()
	os.open("http://www.hearthis.at");
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
		streamkeys.action("hearthis", "pause");
	else
		streamkeys.action("hearthis", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("hearthis", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("hearthis", "pause");
end