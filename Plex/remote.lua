local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("plex", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Plex site
actions.launch = function ()
	os.open("http://www.plex.tv");
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
	streamkeys.action("plex", "mute");
end

--@help Next track
actions.next = function()
	streamkeys.action("plex", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("plex", "playPrev");
end

local playing = false;
--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("plex", "pause");
	else
		streamkeys.action("plex", "play");
	end
  playing = not playing;
end

--@help Resume playback
actions.play = function()
	streamkeys.action("plex", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("plex", "pause");
end