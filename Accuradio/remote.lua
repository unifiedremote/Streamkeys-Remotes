local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("accuradio", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Accuradio site
actions.launch = function ()
	os.open("https://www.accuradio.com");
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

local playing = false;
--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("accuradio", "pause");
	else
		streamkeys.action("accuradio", "play");
	end
  playing = not playing;
end

--@help Resume playback
actions.play = function()
	streamkeys.action("accuradio", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("accuradio", "pause");
end