require("commons")

local function getNewTexturePath(oldTexturePath)
	local newTexturePath,changes = string.gsub(oldTexturePath, "^__base__", modRoot)
	if settings.startup[cyanSettingName].value then
		newTexturePath,changes = string.gsub(newTexturePath, "%.png$", "_cyan.png")
	end
	return newTexturePath
end

local nuclearReactorItem = data.raw.item["nuclear-reactor"]
nuclearReactorItem.icon = getNewTexturePath(nuclearReactorItem.icon)

local nuclearReactorReactor = data.raw.reactor["nuclear-reactor"]
if settings.startup[cyanSettingName].value then
	nuclearReactorReactor.light.color = {b = 0.94, g = 1.0, r = 0.0}
else
	nuclearReactorReactor.light.color = {b = 1.0, g = 0.15, r = 0.0}
end
nuclearReactorReactor.working_light_picture.filename = getNewTexturePath(nuclearReactorReactor.working_light_picture.filename)
nuclearReactorReactor.working_light_picture.hr_version.filename = getNewTexturePath(nuclearReactorReactor.working_light_picture.hr_version.filename)

local nuclearReactorTechnology = data.raw.technology["nuclear-power"]
nuclearReactorTechnology.icon = getNewTexturePath(nuclearReactorTechnology.icon)
