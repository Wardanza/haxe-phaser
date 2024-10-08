package phaser.types.gameobjects.bitmaptext;

typedef JSONBitmapText = phaser.types.gameobjects.JSONGameObject & {
	/**
		The name of the font.
	**/
	var font : String;
	/**
		The text that this Bitmap Text displays.
	**/
	var text : String;
	/**
		The size of the font.
	**/
	var fontSize : Float;
	/**
		Adds / Removes spacing between characters.
	**/
	var letterSpacing : Float;
	/**
		Adds / Removes spacing between lines in multi-line text.
	**/
	var lineSpacing : Float;
	/**
		The alignment of the text in a multi-line BitmapText object.
	**/
	var align : Float;
};