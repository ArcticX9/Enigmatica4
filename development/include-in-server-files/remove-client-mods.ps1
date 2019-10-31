param(
	[PSObject]
	$ClientMods = @(
		"AppleSkin", 
		"BetterAdvancements",
		"CraftingTweaks", 
		"DefaultOptions", 
		"EnchantmentDescriptions", 
		"EquipmentTooltips", 
		"FpsReducer", 
		"JustEnoughResources",
		"LLOverlayReloaded", 
		"MouseTweaks",
		"nmdar_", 
		"Neat", 
		"overloadedarmorbar", 
		"swingthroughgrass", 
		"ToastControl", 
		"toughnessbar", 
		"Xaeros_Minimap", 
		"XaerosWorldMap")
)

$ModFolder = "$PSScriptRoot/mods"

Get-ChildItem $ModFolder -Name -Filter  "*.jar" | ForEach-Object {
	$Mod = $_.toLower()
	foreach ($ClientMod in $ClientMods) {
		if ($Mod.StartsWith($ClientMod.toLower())) {
			Remove-Item "$Modfolder/$Mod" -Force
		}
	}
}