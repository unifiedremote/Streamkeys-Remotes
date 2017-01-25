local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.detect = function ()
	return detect();
end

events.focus = function ()
	init("music.microsoft", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Microsoft Groove site
actions.launch = function ()
	os.open("http://music.microsoft.com");
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
	streamkeys.action("music.microsoft", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("music.microsoft", "playPrev");
end

local playing = false;
--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("music.microsoft", "pause");
	else
		streamkeys.action("music.microsoft", "play");
	end
  playing = not playing;
end

--@help Resume playback
actions.play = function()
	streamkeys.action("music.microsoft", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("music.microsoft", "pause");
end