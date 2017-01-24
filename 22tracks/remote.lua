local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("22tracks", true);
end

events.blur = function ()
	uninit();
end

--@help Launch 22tracks site
actions.launch = function ()
	os.open("http://www.22tracks.com");
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
	streamkeys.action("22tracks", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("22tracks", "playPrev");
end

local playing = false;
--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("22tracks", "pause");
	else
		streamkeys.action("22tracks", "play");
	end
  playing = not playing;
end

--@help Resume playback
actions.play = function()
	streamkeys.action("22tracks", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("22tracks", "pause");
end