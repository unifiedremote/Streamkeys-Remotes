local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("radioswissjazz", true);
end

events.blur = function ()
	uninit();
end

--@help Launch RadioSwissJazz site
actions.launch = function ()
	os.open("http://www.radioswissjazz.ch");
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
		streamkeys.action("radioswissjazz", "pause");
	else
		streamkeys.action("radioswissjazz", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("radioswissjazz", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("radioswissjazz", "pause");
end