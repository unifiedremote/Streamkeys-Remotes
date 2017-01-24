local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("bbc", true);
end

events.blur = function ()
	uninit();
end

--@help Launch BBC Radio site
actions.launch = function ()
	os.open("http://www.bbc.co.uk/radio");
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
	streamkeys.action("bbc", "mute");
end

--@help Like track
actions.like = function()
	streamkeys.action("bbc", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("bbc", "dislike");
end

local playing = false;
--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("bbc", "pause");
	else
		streamkeys.action("bbc", "play");
	end
  playing = not playing;
end

--@help Resume playback
actions.play = function()
	streamkeys.action("bbc", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("bbc", "pause");
end