local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("emby", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Emby site
actions.launch = function ()
	os.open("http://app.emby.media");
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
	streamkeys.action("emby", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("emby", "playPrev");
end

--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("emby", "pause");
	else
		streamkeys.action("emby", "play");
	end
end

--@help Resume playback
actions.play = function()
	streamkeys.action("emby", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("emby", "pause");
end