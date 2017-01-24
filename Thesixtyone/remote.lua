local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("thesixtyone", true);
end

events.blur = function ()
	uninit();
end

--@help Launch TheSixtyOne site
actions.launch = function ()
	os.open("http://www.thesixtyone.com");
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
	streamkeys.action("thesixtyone", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("thesixtyone", "playPrev");
end

local playing = false;
--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("thesixtyone", "pause");
	else
		streamkeys.action("thesixtyone", "play");
	end
  playing = not playing;
end

--@help Resume playback
actions.play = function()
	streamkeys.action("thesixtyone", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("thesixtyone", "pause");
end