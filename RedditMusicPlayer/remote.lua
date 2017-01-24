local keyboard = libs.keyboard;
local streamkeys = libs.streamkeys;
include("../streamkeys.lua");

events.focus = function ()
	init("reddit.music.player.il", true);
end

events.blur = function ()
	uninit();
end

--@help Launch Reddit Music Player site
actions.launch = function ()
	os.open("http://reddit.music.player.il.ly");
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
	streamkeys.action("reddit.music.player.il", "playNext");
end

--@help previous track
actions.previous = function()
	streamkeys.action("reddit.music.player.il", "playPrev");
end

--@help Like track
actions.like = function()
	streamkeys.action("reddit.music.player.il", "like");
end

--@help Dislike track
actions.dislike = function()
	streamkeys.action("reddit.music.player.il", "dislike");
end

--@help Toggle playback state
actions.play_pause = function()
	streamkeys.action("reddit.music.player.il", "playPause");
end