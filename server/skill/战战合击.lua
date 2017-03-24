function find_target(hero)
	local host = lualib:GetHeroLord(hero);
	local dxs = {[0] = 0, 1, 1, 1, 0, -1, -1, -1};
	local dys = {[0] = -1, -1, 0, 1, 1, 1, 0, -1};
	local host_x, host_y = lualib:X(host), lualib:Y(host);
	local dir = lualib:Dir(host);
	local strSite = (host_x + dxs[dir])..","..(host_y + dys[dir]);
	for i = 2, 6 do
		strSite = strSite..","..(host_x + dxs[dir] * i)..","..(host_y + dys[dir] * i);
	end
	return strSite;
end