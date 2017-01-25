local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("player.edge", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Edge Player site
actions.launch = function ()
	os.open("http://player.edge.ca");
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
	streamkeys.action("player.edge", "mute");
end

--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("player.edge", "pause");
	else
		streamkeys.action("player.edge", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("player.edge", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("player.edge", "pause");
end