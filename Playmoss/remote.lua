local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("playmoss", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Playmoss site
actions.launch = function ()
	os.open("http://www.playmoss.com");
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

--@help Next track
actions.next = function()
	streamkeys.action("playmoss", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("playmoss", "playPrev");
end

local playing = false;
--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("playmoss", "pause");
	else
		streamkeys.action("playmoss", "play");
	end
  playing = not playing;
end

--@help Resume playback
actions.play = function()
	streamkeys.action("playmoss", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("playmoss", "pause");
end