local function getNewTexturePath(oldTexturePath)
	local newTexturePath,changes = string.gsub(oldTexturePath, "^__base__", "__RealisticReactorGlow__")
	return newTexturePath
end

local nuclearReactorItem = data.raw.item["nuclear-reactor"]
nuclearReactorItem.icon = getNewTexturePath(nuclearReactorItem.icon)

local nuclearReactorReactor = data.raw.reactor["nuclear-reactor"]
nuclearReactorReactor.light.color = {b = 0.94, g = 1, r = 0}
nuclearReactorReactor.working_light_picture.filename = getNewTexturePath(nuclearReactorReactor.working_light_picture.filename)
nuclearReactorReactor.working_light_picture.hr_version.filename = getNewTexturePath(nuclearReactorReactor.working_light_picture.hr_version.filename)

local nuclearReactorTechnology = data.raw.technology["nuclear-power"]
nuclearReactorTechnology.icon = getNewTexturePath(nuclearReactorTechnology.icon)
