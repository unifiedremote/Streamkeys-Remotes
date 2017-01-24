local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("lovelinetapes", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Loveline Tapes site
actions.launch = function ()
	os.open("http://www.lovelinetapes.com");
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
		streamkeys.action("lovelinetapes", "pause");
	else
		streamkeys.action("lovelinetapes", "play");
	end
  playing = not playing;
end

--@help Resume playback
actions.play = function()
	streamkeys.action("lovelinetapes", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("lovelinetapes", "pause");
end