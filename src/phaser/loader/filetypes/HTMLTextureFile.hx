package phaser.loader.filetypes;

/**
	A single HTML File suitable for loading by the Loader.
	
	These are created when you use the Phaser.Loader.LoaderPlugin#htmlTexture method and are not typically created directly.
	
	For documentation about what all the arguments and configuration options mean please see Phaser.Loader.LoaderPlugin#htmlTexture.
**/
@:native("Phaser.Loader.FileTypes.HTMLTextureFile") extern class HTMLTextureFile extends phaser.loader.File {
	function new(loader:phaser.loader.LoaderPlugin, key:ts.AnyOf2<String, phaser.types.loader.filetypes.HTMLTextureFileConfig>, ?url:String, ?width:Float, ?height:Float, ?xhrSettings:phaser.types.loader.XHRSettingsObject);
	static var prototype : HTMLTextureFile;
}