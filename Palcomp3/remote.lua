local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("palcomp3", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Palco MP3 site
actions.launch = function ()
	os.open("http://palcomp3.com");
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
	streamkeys.action("palcomp3", "mute");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("palcomp3", "playPause");
end