# ModPE

## `dumpVtable(string, int)`
- No information yet.  
Has to do with dumping Vtables from the game, probably used to help development with BlockLauncher.

## `getBytesFromTexturePack(string)`
- No information yet.

## `getMinecraftVersion() -> string?`
**Speculation:** Returns the current Minecraft: PE version as a string.

## `langEdit(key: string, value: string)`
Edits a key/value pair in MC:PE's i18n.

## `leaveGame()`
**Speculation:** Leaves the current game.

## `log(message: string)`
Logs something into LogCat.

## `openInputStreamFromTexturePack(string)`
- No information yet.

## `overrideTexture(string, string)`
- No information yet.

## `readData(key: string) -> string`
Reads stored data.

## `removeData(key: string)`
Removes stored data.

## `resetFov()`
Resets FOV back to normal.

## `resetImages()`
**Speculation:** Resets images modified back to normal.

## `saveData(key: string, data: string)`
Saves data into BL's preferences.

## `selectLevel(string)`
- No information yet.

## `setCamera(target: entity)`
Sets the camera to an entity.

## `setFoodItem(id: int, icon: string, health: int, iconSubIndex: int, name: string, maxStack: int)`
Creates a food item.

### Example
The below code creates a food called "Lava Food" which looks like lava and restores
999 half-hearts.
```js
ModPE.setFoodItem(1000, "still_lava", 999, 0, "Lava Food", 64);
```

## `setFov(fov: double)`
Sets the FOV to the desired amount.

## `setGameSpeed(speed: double)`
**Speculation:** Sets the game speed to the amount of ticks per second.
The default is 20.

## `setGuiBlocks(url: string)`
Sets the textures for GUI blocks from an URL.

## `setItem(id: int, icon: string, iconSubIndex: int, name: string, maxStack: int)`
Creates a new item.

## `setItems(url: string)`
Sets the textures for items from an URL.

## `setTerrain(url: string)`
Sets the textures for terrians from an URL.

## `showTipMessage(message: string)`
Shows a tip message (like the one displayed when you hold an item.)

### Example
The below code constantly displays a tip message.
```js
function modTick() {
  ModPE.showTipMessage("Hello!");
}
```

## `takeScreenshot(filename: string)`
**Speculation:** Takes a screenshot and saves it to `filename`.
