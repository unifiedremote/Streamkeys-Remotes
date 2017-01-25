local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("deezer", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Deezer site
actions.launch = function ()
	os.open("http://www.deezer.com");
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
	streamkeys.action("deezer", "mute");
end

--@help Next track
actions.next = function()
	streamkeys.action("deezer", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("deezer", "playPrev");
end

--@help Like track
actions.like = function()
	streamkeys.action("deezer", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("deezer", "dislike");
end

local playing = false;
--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("deezer", "pause");
	else
		streamkeys.action("deezer", "play");
	end
  playing = not playing;
end

--@help Resume playback
actions.play = function()
	streamkeys.action("deezer", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("deezer", "pause");
end