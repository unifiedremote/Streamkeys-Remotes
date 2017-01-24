local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("tidal", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Tidal site
actions.launch = function ()
	os.open("https://www.tidal.com");
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
	streamkeys.action("tidal", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("tidal", "playPrev");
end

local playing = false;
--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("tidal", "pause");
	else
		streamkeys.action("tidal", "play");
	end
  playing = not playing;
end

--@help Resume playback
actions.play = function()
	streamkeys.action("tidal", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("tidal", "pause");
end