package phaser.loader.filetypes;

/**
	A single CSS File suitable for loading by the Loader.
	
	These are created when you use the Phaser.Loader.LoaderPlugin#css method and are not typically created directly.
	
	For documentation about what all the arguments and configuration options mean please see Phaser.Loader.LoaderPlugin#css.
**/
@:native("Phaser.Loader.FileTypes.CSSFile") extern class CSSFile extends phaser.loader.File {
	function new(loader:phaser.loader.LoaderPlugin, key:ts.AnyOf2<String, phaser.types.loader.filetypes.CSSFileConfig>, ?url:String, ?xhrSettings:phaser.types.loader.XHRSettingsObject);
	static var prototype : CSSFile;
}