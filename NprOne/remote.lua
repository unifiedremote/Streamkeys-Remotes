local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("one.npr", true);
end

events.blur = function ()
	uninit();
end

--@help Launch NPR One Player site
actions.launch = function ()
	os.open("http://one.npr.org");
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
		streamkeys.action("one.npr", "pause");
	else
		streamkeys.action("one.npr", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("one.npr", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("one.npr", "pause");
end