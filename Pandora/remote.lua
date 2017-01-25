local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("pandora", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Pandora site
actions.launch = function ()
	os.open("http://www.pandora.com");
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
	streamkeys.action("pandora", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("pandora", "playPrev");
end

--@help Like track
actions.like = function()
	streamkeys.action("pandora", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("pandora", "dislike");
end

local playing = false;
--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("pandora", "pause");
	else
		streamkeys.action("pandora", "play");
	end
  playing = not playing;
end

--@help Resume playback
actions.play = function()
	streamkeys.action("pandora", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("pandora", "pause");
end