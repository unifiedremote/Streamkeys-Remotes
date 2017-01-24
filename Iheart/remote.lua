local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("iheart", true);
end

events.blur = function ()
	uninit();
end

--@help Launch iHeartRadio site
actions.launch = function ()
	os.open("http://www.iheart.com");
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
	streamkeys.action("iheart", "mute");
end

--@help Like track
actions.like = function()
	streamkeys.action("iheart", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("iheart", "dislike");
end

--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("iheart", "pause");
	else
		streamkeys.action("iheart", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("iheart", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("iheart", "pause");
end