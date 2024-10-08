package phaser.loader.filetypes;

/**
	A single Tiled Tilemap JSON File suitable for loading by the Loader.
	
	These are created when you use the Phaser.Loader.LoaderPlugin#tilemapTiledJSON method and are not typically created directly.
	
	For documentation about what all the arguments and configuration options mean please see Phaser.Loader.LoaderPlugin#tilemapTiledJSON.
**/
@:native("Phaser.Loader.FileTypes.TilemapJSONFile") extern class TilemapJSONFile extends phaser.loader.File {
	function new(loader:phaser.loader.LoaderPlugin, key:ts.AnyOf2<String, phaser.types.loader.filetypes.TilemapJSONFileConfig>, ?url:ts.AnyOf2<String, Dynamic>, ?xhrSettings:phaser.types.loader.XHRSettingsObject);
	static var prototype : TilemapJSONFile;
}