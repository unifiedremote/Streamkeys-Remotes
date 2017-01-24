local streamkeys = libs.streamkeys;
local server = libs.server;
local timer = libs.timer;
local utf8 = libs.utf8;
local tid = -1;
local state = {};

local site;
local hasState;
local title = "";
local playing = false;



function showInfo()
	server.update({
		type = "dialog",
		title = "Streamkeys",
		text = "This remote uses Streamkeys to control the web app. Streamkeys and Chrome is required to use this remote.\n\n" ..
			"1. Install the Streamkeys Chrome extension. http://www.streamkeys.com/\n\n" ..
			"2. Click Icon > Options > General\n\n" ..
			"3. Enable 'Unified Remote Integration'.",
		children = { { type = "button", text = "ok" } }
	});
end

function check()
	if (not streamkeys.status()) then
		showInfo();
	end
end

function init(_site, _hasState)
	check();
	site = _site;
	hasState = _hasState;
	if (hasState) then
		tid = timer.interval(update, 1000);
	end
end

function uninit()
	timer.cancel(tid);
end

function update()
	state = streamkeys.state(site);

	-- maybe update title
	local p = {};
	if state.song then table.insert(p, state.song); end
	if state.artist then table.insert(p, state.artist); end
	if state.album then table.insert(p, state.album); end
	local _title = utf8.join(" - ", p);
	if (_title ~= title) then
		title = _title;
		server.update({ id = "info", text = title });
	end

	-- maybe update playstate
	local _playing = state.playState;
	if (_playing ~= playing) then
		playing = _playing;
		if (playing) then
			server.update({ id = "p", icon = "pause" });
		else
			server.update({ id = "p", icon = "play" });
		end
	end
end
