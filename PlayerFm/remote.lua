local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("player", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Player.fm site
actions.launch = function ()
	os.open("http://player.fm");
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
	streamkeys.action("player", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("player", "playPrev");
end

local playing = false;
--@help Toggle playback state
actions.play_pause = function()
	if (playing) then
		streamkeys.action("player", "pause");
	else
		streamkeys.action("player", "play");
	end
  playing = not playing;
end

--@help Resume playback
actions.play = function()
	streamkeys.action("player", "play");
end

--@help Pause playback
actions.pause = function()
	streamkeys.action("player", "pause");
end