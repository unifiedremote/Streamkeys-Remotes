local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("music.yandex", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Yandex site
actions.launch = function ()
	os.open("http://music.yandex.ru");
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
	streamkeys.action("music.yandex", "mute");
end

--@help Next track
actions.next = function()
	streamkeys.action("music.yandex", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("music.yandex", "playPrev");
end

--@help Like track
actions.like = function()
	streamkeys.action("music.yandex", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("music.yandex", "dislike");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("music.yandex", "playPause");
end