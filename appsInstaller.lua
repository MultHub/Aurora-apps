local function wget(url, path)
	local r = http.get(url)
	if not r then
		return false
	end
	local f = fs.open(path, "w")
	f.write(r.readAll())
	f.close()
	r.close()
	return true
end

local base = "https://raw.github.com/MultHub/Aurora-apps/master/app-get"

wget(base .. "/aInfo", "apps/app-get/aInfo")
wget(base .. "/app-get", "apps/app-get/app-get")
