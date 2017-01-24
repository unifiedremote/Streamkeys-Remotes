local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("radio.yandex", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Yandex Radio site
actions.launch = function ()
	os.open("http://radio.yandex.ru");
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
	streamkeys.action("radio.yandex", "mute");
end

--@help Like track
actions.like = function()
	streamkeys.action("radio.yandex", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("radio.yandex", "dislike");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("radio.yandex", "playPause");
end