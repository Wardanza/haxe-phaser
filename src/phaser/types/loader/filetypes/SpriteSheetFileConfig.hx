package phaser.types.loader.filetypes;

typedef SpriteSheetFileConfig = {
	/**
		The key of the file. Must be unique within both the Loader and the Texture Manager.
	**/
	var key : String;
	/**
		The absolute or relative URL to load the file from.
	**/
	@:optional
	var url : String;
	/**
		The default file extension to use if no url is provided.
	**/
	@:optional
	var extension : String;
	/**
		The filename of an associated normal map. It uses the same path and url to load as the image.
	**/
	@:optional
	var normalMap : String;
	/**
		The frame configuration object.
	**/
	@:optional
	var frameConfig : ImageFrameConfig;
	/**
		Extra XHR Settings specifically for this file.
	**/
	@:optional
	var xhrSettings : phaser.types.loader.XHRSettingsObject;
};