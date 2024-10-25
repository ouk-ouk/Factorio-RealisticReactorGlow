require("commons")

local function getNewTexturePath(oldTexturePath)
	local newTexturePath,changes = string.gsub(oldTexturePath, "^__base__", modRoot)
	if settings.startup[cyanSettingName].value then
		newTexturePath,changes = string.gsub(newTexturePath, "%.png$", "_cyan.png")
	end
	return newTexturePath
end

local nuclearReactorItem = data.raw.item["nuclear-reactor"]
if nuclearReactorItem then
	nuclearReactorItem.icon = getNewTexturePath(nuclearReactorItem.icon)
end

local nuclearReactorEntity = data.raw.reactor["nuclear-reactor"]
if nuclearReactorEntity then
	if nuclearReactorEntity.light then
		if settings.startup[cyanSettingName].value then
			nuclearReactorEntity.light.color = {b = 0.94, g = 1.0, r = 0.0}
		else
			nuclearReactorEntity.light.color = {b = 1.0, g = 0.15, r = 0.0}
		end
	end
	nuclearReactorEntity.working_light_picture.filename = getNewTexturePath(nuclearReactorEntity.working_light_picture.filename)
end

local nuclearReactorTechnology = data.raw.technology["nuclear-power"]
if nuclearReactorTechnology then
	nuclearReactorTechnology.icon = getNewTexturePath(nuclearReactorTechnology.icon)
end
