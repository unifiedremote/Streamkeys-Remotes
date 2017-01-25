local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("8tracks", true);
end

events.blur = function ()
	uninit();
end

--@help Launch 8tracks site
actions.launch = function ()
	os.open("http://www.8tracks.com");
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
	streamkeys.action("8tracks", "mute");
end

--@help Like track
actions.like = function()
	streamkeys.action("8tracks", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("8tracks", "dislike");
end

local playing = false;
--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("8tracks", "pause");
	else
		streamkeys.action("8tracks", "play");
	end
  playing = not playing;
end

--@help Resume playback
actions.play = function()
	streamkeys.action("8tracks", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("8tracks", "pause");
end