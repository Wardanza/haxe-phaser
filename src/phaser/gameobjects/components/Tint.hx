package phaser.gameobjects.components;

/**
	Provides methods used for setting the tint of a Game Object.
	Should be applied as a mixin and not used directly.
**/
typedef Tint = {
	/**
		The tint value being applied to the top-left vertice of the Game Object.
		This value is interpolated from the corner to the center of the Game Object.
		The value should be set as a hex number, i.e. 0xff0000 for red, or 0xff00ff for purple.
	**/
	var tintTopLeft : Float;
	/**
		The tint value being applied to the top-right vertice of the Game Object.
		This value is interpolated from the corner to the center of the Game Object.
		The value should be set as a hex number, i.e. 0xff0000 for red, or 0xff00ff for purple.
	**/
	var tintTopRight : Float;
	/**
		The tint value being applied to the bottom-left vertice of the Game Object.
		This value is interpolated from the corner to the center of the Game Object.
		The value should be set as a hex number, i.e. 0xff0000 for red, or 0xff00ff for purple.
	**/
	var tintBottomLeft : Float;
	/**
		The tint value being applied to the bottom-right vertice of the Game Object.
		This value is interpolated from the corner to the center of the Game Object.
		The value should be set as a hex number, i.e. 0xff0000 for red, or 0xff00ff for purple.
	**/
	var tintBottomRight : Float;
	/**
		The tint fill mode.
		
		`false` = An additive tint (the default), where vertices colors are blended with the texture.
		`true` = A fill tint, where the vertices colors replace the texture, but respects texture alpha.
	**/
	var tintFill : Bool;
	/**
		Clears all tint values associated with this Game Object.
		
		Immediately sets the color values back to 0xffffff and the tint type to 'additive',
		which results in no visible change to the texture.
	**/
	function clearTint():Tint;
	/**
		Sets an additive tint on this Game Object.
		
		The tint works by taking the pixel color values from the Game Objects texture, and then
		multiplying it by the color value of the tint. You can provide either one color value,
		in which case the whole Game Object will be tinted in that color. Or you can provide a color
		per corner. The colors are blended together across the extent of the Game Object.
		
		To modify the tint color once set, either call this method again with new values or use the
		`tint` property to set all colors at once. Or, use the properties `tintTopLeft`, `tintTopRight,
		`tintBottomLeft` and `tintBottomRight` to set the corner color values independently.
		
		To remove a tint call `clearTint`.
		
		To swap this from being an additive tint to a fill based tint set the property `tintFill` to `true`.
	**/
	function setTint(?topLeft:Float, ?topRight:Float, ?bottomLeft:Float, ?bottomRight:Float):Tint;
	/**
		Sets a fill-based tint on this Game Object.
		
		Unlike an additive tint, a fill-tint literally replaces the pixel colors from the texture
		with those in the tint. You can use this for effects such as making a player flash 'white'
		if hit by something. You can provide either one color value, in which case the whole
		Game Object will be rendered in that color. Or you can provide a color per corner. The colors
		are blended together across the extent of the Game Object.
		
		To modify the tint color once set, either call this method again with new values or use the
		`tint` property to set all colors at once. Or, use the properties `tintTopLeft`, `tintTopRight,
		`tintBottomLeft` and `tintBottomRight` to set the corner color values independently.
		
		To remove a tint call `clearTint`.
		
		To swap this from being a fill-tint to an additive tint set the property `tintFill` to `false`.
	**/
	function setTintFill(?topLeft:Float, ?topRight:Float, ?bottomLeft:Float, ?bottomRight:Float):Tint;
	/**
		The tint value being applied to the whole of the Game Object.
		Return `tintTopLeft` when read this tint property.
	**/
	var tint : Float;
	/**
		Does this Game Object have a tint applied?
		
		It checks to see if the 4 tint properties are set to the value 0xffffff
		and that the `tintFill` property is `false`. This indicates that a Game Object isn't tinted.
	**/
	final isTinted : Bool;
};