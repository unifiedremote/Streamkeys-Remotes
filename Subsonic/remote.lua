local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("subsonic", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Subsonic site
actions.launch = function ()
	os.open("http://www.subsonic.org");
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
	streamkeys.action("subsonic", "mute");
end

--@help Next track
actions.next = function()
	streamkeys.action("subsonic", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("subsonic", "playPrev");
end

local playing = false;
--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("subsonic", "pause");
	else
		streamkeys.action("subsonic", "play");
	end
  playing = not playing;
end

--@help Resume playback
actions.play = function()
	streamkeys.action("subsonic", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("subsonic", "pause");
end