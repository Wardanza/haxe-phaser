package phaser.gameobjects;

/**
	BitmapText objects work by taking a texture file and an XML or JSON file that describes the font structure.
	
	During rendering for each letter of the text is rendered to the display, proportionally spaced out and aligned to
	match the font structure.
	
	Dynamic Bitmap Text objects are different from Static Bitmap Text in that they invoke a callback for each
	letter being rendered during the render pass. This callback allows you to manipulate the properties of
	each letter being rendered, such as its position, scale or tint, allowing you to create interesting effects
	like jiggling text, which can't be done with Static text. This means that Dynamic Text takes more processing
	time, so only use them if you require the callback ability they have.
	
	BitmapText objects are less flexible than Text objects, in that they have less features such as shadows, fills and the ability
	to use Web Fonts, however you trade this flexibility for rendering speed. You can also create visually compelling BitmapTexts by
	processing the font texture in an image editor, applying fills and any other effects required.
	
	To create multi-line text insert \r, \n or \r\n escape codes into the text string.
	
	To create a BitmapText data files you need a 3rd party app such as:
	
	BMFont (Windows, free): {@link http://www.angelcode.com/products/bmfont/|http://www.angelcode.com/products/bmfont/}
	Glyph Designer (OS X, commercial): {@link http://www.71squared.com/en/glyphdesigner|http://www.71squared.com/en/glyphdesigner}
	Snow BMF (Web-based, free): {@link https://snowb.org//|https://snowb.org/}
	Littera (Flash-based, free): {@link http://kvazars.com/littera/|http://kvazars.com/littera/}
	
	For most use cases it is recommended to use XML. If you wish to use JSON, the formatting should be equal to the result of
	converting a valid XML file through the popular X2JS library. An online tool for conversion can be found here: {@link http://codebeautify.org/xmltojson|http://codebeautify.org/xmltojson}
**/
@:native("Phaser.GameObjects.DynamicBitmapText") extern class DynamicBitmapText extends BitmapText {
	function new(scene:phaser.Scene, x:Float, y:Float, font:String, ?text:ts.AnyOf2<String, Array<String>>, ?size:Float, ?align:Float);
	/**
		The horizontal scroll position of the Bitmap Text.
	**/
	var scrollX : Float;
	/**
		The vertical scroll position of the Bitmap Text.
	**/
	var scrollY : Float;
	/**
		The crop width of the Bitmap Text.
	**/
	var cropWidth : Float;
	/**
		The crop height of the Bitmap Text.
	**/
	var cropHeight : Float;
	/**
		A callback that alters how each character of the Bitmap Text is rendered.
	**/
	dynamic function displayCallback(display:phaser.types.gameobjects.bitmaptext.DisplayCallbackConfig):phaser.types.gameobjects.bitmaptext.DisplayCallbackConfig;
	/**
		The data object that is populated during rendering, then passed to the displayCallback.
		You should modify this object then return it back from the callback. It's updated values
		will be used to render the specific glyph.
		
		Please note that if you need a reference to this object locally in your game code then you
		should shallow copy it, as it's updated and re-used for every glyph in the text.
	**/
	var callbackData : phaser.types.gameobjects.bitmaptext.DisplayCallbackConfig;
	/**
		Set the crop size of this Bitmap Text.
	**/
	function setSize(width:Float, height:Float):DynamicBitmapText;
	/**
		Set a callback that alters how each character of the Bitmap Text is rendered.
		
		The callback receives a {@link Phaser.Types.GameObjects.BitmapText.DisplayCallbackConfig} object that contains information about the character that's
		about to be rendered.
		
		It should return an object with `x`, `y`, `scale` and `rotation` properties that will be used instead of the
		usual values when rendering.
	**/
	function setDisplayCallback(callback:phaser.types.gameobjects.bitmaptext.DisplayCallback):DynamicBitmapText;
	/**
		Set the horizontal scroll position of this Bitmap Text.
	**/
	function setScrollX(value:Float):DynamicBitmapText;
	/**
		Set the vertical scroll position of this Bitmap Text.
	**/
	function setScrollY(value:Float):DynamicBitmapText;
	/**
		Clears all alpha values associated with this Game Object.
		
		Immediately sets the alpha levels back to 1 (fully opaque).
	**/
	function clearAlpha():DynamicBitmapText;
	/**
		Set the Alpha level of this Game Object. The alpha controls the opacity of the Game Object as it renders.
		Alpha values are provided as a float between 0, fully transparent, and 1, fully opaque.
		
		If your game is running under WebGL you can optionally specify four different alpha values, each of which
		correspond to the four corners of the Game Object. Under Canvas only the `topLeft` value given is used.
	**/
	function setAlpha(?topLeft:Float, ?topRight:Float, ?bottomLeft:Float, ?bottomRight:Float):DynamicBitmapText;
	/**
		Sets the Blend Mode being used by this Game Object.
		
		This can be a const, such as `Phaser.BlendModes.SCREEN`, or an integer, such as 4 (for Overlay)
		
		Under WebGL only the following Blend Modes are available:
		
		* NORMAL
		* ADD
		* MULTIPLY
		* SCREEN
		* ERASE (only works when rendering to a framebuffer, like a Render Texture)
		
		Canvas has more available depending on browser support.
		
		You can also create your own custom Blend Modes in WebGL.
		
		Blend modes have different effects under Canvas and WebGL, and from browser to browser, depending
		on support. Blend Modes also cause a WebGL batch flush should it encounter a new blend mode. For these
		reasons try to be careful about the construction of your Scene and the frequency in which blend modes
		are used.
	**/
	function setBlendMode(value:ts.AnyOf3<String, Float, phaser.BlendModes>):DynamicBitmapText;
	/**
		The depth of this Game Object within the Scene.
		
		The depth is also known as the 'z-index' in some environments, and allows you to change the rendering order
		of Game Objects, without actually moving their position in the display list.
		
		The default depth is zero. A Game Object with a higher depth
		value will always render in front of one with a lower value.
		
		Setting the depth will queue a depth sort event within the Scene.
	**/
	function setDepth(value:Float):DynamicBitmapText;
	/**
		Sets the mask that this Game Object will use to render with.
		
		The mask must have been previously created and can be either a GeometryMask or a BitmapMask.
		Note: Bitmap Masks only work on WebGL. Geometry Masks work on both WebGL and Canvas.
		
		If a mask is already set on this Game Object it will be immediately replaced.
		
		Masks are positioned in global space and are not relative to the Game Object to which they
		are applied. The reason for this is that multiple Game Objects can all share the same mask.
		
		Masks have no impact on physics or input detection. They are purely a rendering component
		that allows you to limit what is visible during the render pass.
	**/
	function setMask(mask:ts.AnyOf2<phaser.display.masks.BitmapMask, phaser.display.masks.GeometryMask>):DynamicBitmapText;
	/**
		Clears the mask that this Game Object was using.
	**/
	function clearMask(?destroyMask:Bool):DynamicBitmapText;
	/**
		Sets the origin of this Game Object.
		
		The values are given in the range 0 to 1.
	**/
	function setOrigin(?x:Float, ?y:Float):DynamicBitmapText;
	/**
		Sets the origin of this Game Object based on the Pivot values in its Frame.
	**/
	function setOriginFromFrame():DynamicBitmapText;
	/**
		Sets the display origin of this Game Object.
		The difference between this and setting the origin is that you can use pixel values for setting the display origin.
	**/
	function setDisplayOrigin(?x:Float, ?y:Float):DynamicBitmapText;
	/**
		Sets the main WebGL Pipeline of this Game Object.
		
		Also sets the `pipelineData` property, if the parameter is given.
	**/
	function setPipeline(pipeline:ts.AnyOf2<String, phaser.renderer.webgl.WebGLPipeline>, ?pipelineData:Dynamic, ?copyData:Bool):DynamicBitmapText;
	/**
		Adds an entry to the `pipelineData` object belonging to this Game Object.
		
		If the 'key' already exists, its value is updated. If it doesn't exist, it is created.
		
		If `value` is undefined, and `key` exists, `key` is removed from the data object.
	**/
	function setPipelineData(key:String, ?value:Dynamic):DynamicBitmapText;
	/**
		Sets one, or more, Post Pipelines on this Game Object.
		
		Post Pipelines are invoked after this Game Object has rendered to its target and
		are commonly used for post-fx.
		
		The post pipelines are appended to the `postPipelines` array belonging to this
		Game Object. When the renderer processes this Game Object, it iterates through the post
		pipelines in the order in which they appear in the array. If you are stacking together
		multiple effects, be aware that the order is important.
		
		If you call this method multiple times, the new pipelines will be appended to any existing
		post pipelines already set. Use the `resetPostPipeline` method to clear them first, if required.
		
		You can optionally also set the `postPipelineData` property, if the parameter is given.
	**/
	function setPostPipeline(pipelines:ts.AnyOf6<String, haxe.Constraints.Function, Array<String>, Array<haxe.Constraints.Function>, phaser.renderer.webgl.pipelines.PostFXPipeline, Array<phaser.renderer.webgl.pipelines.PostFXPipeline>>, ?pipelineData:Dynamic, ?copyData:Bool):DynamicBitmapText;
	/**
		Adds an entry to the `postPipelineData` object belonging to this Game Object.
		
		If the 'key' already exists, its value is updated. If it doesn't exist, it is created.
		
		If `value` is undefined, and `key` exists, `key` is removed from the data object.
	**/
	function setPostPipelineData(key:String, ?value:Dynamic):DynamicBitmapText;
	/**
		Removes a type of Post Pipeline instances from this Game Object, based on the given name, and destroys them.
		
		If you wish to remove all Post Pipelines use the `resetPostPipeline` method instead.
	**/
	function removePostPipeline(pipeline:ts.AnyOf2<String, phaser.renderer.webgl.pipelines.PostFXPipeline>):DynamicBitmapText;
	/**
		Removes all Pre and Post FX Controllers from this Game Object.
		
		If you wish to remove a single controller, use the `preFX.remove(fx)` or `postFX.remove(fx)` methods instead.
		
		If you wish to clear a single controller, use the `preFX.clear()` or `postFX.clear()` methods instead.
	**/
	function clearFX():DynamicBitmapText;
	/**
		Sets the scroll factor of this Game Object.
		
		The scroll factor controls the influence of the movement of a Camera upon this Game Object.
		
		When a camera scrolls it will change the location at which this Game Object is rendered on-screen.
		It does not change the Game Objects actual position values.
		
		A value of 1 means it will move exactly in sync with a camera.
		A value of 0 means it will not move at all, even if the camera moves.
		Other values control the degree to which the camera movement is mapped to this Game Object.
		
		Please be aware that scroll factor values other than 1 are not taken in to consideration when
		calculating physics collisions. Bodies always collide based on their world position, but changing
		the scroll factor is a visual adjustment to where the textures are rendered, which can offset
		them from physics bodies if not accounted for in your code.
	**/
	function setScrollFactor(x:Float, ?y:Float):DynamicBitmapText;
	/**
		Sets the texture and frame this Game Object will use to render with.
		
		Textures are referenced by their string-based keys, as stored in the Texture Manager.
		
		Calling this method will modify the `width` and `height` properties of your Game Object.
		
		It will also change the `origin` if the Frame has a custom pivot point, as exported from packages like Texture Packer.
	**/
	function setTexture(key:ts.AnyOf2<String, phaser.textures.Texture>, ?frame:ts.AnyOf2<String, Float>, ?updateSize:Bool, ?updateOrigin:Bool):DynamicBitmapText;
	/**
		Sets the frame this Game Object will use to render with.
		
		If you pass a string or index then the Frame has to belong to the current Texture being used
		by this Game Object.
		
		If you pass a Frame instance, then the Texture being used by this Game Object will also be updated.
		
		Calling `setFrame` will modify the `width` and `height` properties of your Game Object.
		
		It will also change the `origin` if the Frame has a custom pivot point, as exported from packages like Texture Packer.
	**/
	function setFrame(frame:ts.AnyOf3<String, Float, phaser.textures.Frame>, ?updateSize:Bool, ?updateOrigin:Bool):DynamicBitmapText;
	/**
		Clears all tint values associated with this Game Object.
		
		Immediately sets the color values back to 0xffffff and the tint type to 'additive',
		which results in no visible change to the texture.
	**/
	function clearTint():DynamicBitmapText;
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
	function setTint(?topLeft:Float, ?topRight:Float, ?bottomLeft:Float, ?bottomRight:Float):DynamicBitmapText;
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
	function setTintFill(?topLeft:Float, ?topRight:Float, ?bottomLeft:Float, ?bottomRight:Float):DynamicBitmapText;
	/**
		Sets the position of this Game Object.
	**/
	function setPosition(?x:Float, ?y:Float, ?z:Float, ?w:Float):DynamicBitmapText;
	/**
		Copies an object's coordinates to this Game Object's position.
	**/
	function copyPosition(source:ts.AnyOf3<phaser.types.math.Vector2Like, phaser.types.math.Vector3Like, phaser.types.math.Vector4Like>):DynamicBitmapText;
	/**
		Sets the position of this Game Object to be a random position within the confines of
		the given area.
		
		If no area is specified a random position between 0 x 0 and the game width x height is used instead.
		
		The position does not factor in the size of this Game Object, meaning that only the origin is
		guaranteed to be within the area.
	**/
	function setRandomPosition(?x:Float, ?y:Float, ?width:Float, ?height:Float):DynamicBitmapText;
	/**
		Sets the rotation of this Game Object.
	**/
	function setRotation(?radians:Float):DynamicBitmapText;
	/**
		Sets the angle of this Game Object.
	**/
	function setAngle(?degrees:Float):DynamicBitmapText;
	/**
		Sets the scale of this Game Object.
	**/
	function setScale(?x:Float, ?y:Float):DynamicBitmapText;
	/**
		Sets the x position of this Game Object.
	**/
	function setX(?value:Float):DynamicBitmapText;
	/**
		Sets the y position of this Game Object.
	**/
	function setY(?value:Float):DynamicBitmapText;
	/**
		Sets the z position of this Game Object.
		
		Note: The z position does not control the rendering order of 2D Game Objects. Use
		{@link Phaser.GameObjects.Components.Depth#setDepth} instead.
	**/
	function setZ(?value:Float):DynamicBitmapText;
	/**
		Sets the w position of this Game Object.
	**/
	function setW(?value:Float):DynamicBitmapText;
	/**
		Sets the visibility of this Game Object.
		
		An invisible Game Object will skip rendering, but will still process update logic.
	**/
	function setVisible(value:Bool):DynamicBitmapText;
	/**
		Set the lines of text in this BitmapText to be left-aligned.
		This only has any effect if this BitmapText contains more than one line of text.
	**/
	function setLeftAlign():DynamicBitmapText;
	/**
		Set the lines of text in this BitmapText to be center-aligned.
		This only has any effect if this BitmapText contains more than one line of text.
	**/
	function setCenterAlign():DynamicBitmapText;
	/**
		Set the lines of text in this BitmapText to be right-aligned.
		This only has any effect if this BitmapText contains more than one line of text.
	**/
	function setRightAlign():DynamicBitmapText;
	/**
		Set the font size of this Bitmap Text.
	**/
	function setFontSize(size:Float):DynamicBitmapText;
	/**
		Sets the letter spacing between each character of this Bitmap Text.
		Can be a positive value to increase the space, or negative to reduce it.
		Spacing is applied after the kerning values have been set.
	**/
	function setLetterSpacing(?spacing:Float):DynamicBitmapText;
	/**
		Sets the line spacing value. This value is added to the font height to
		calculate the overall line height.
		
		Spacing can be a negative or positive number.
		
		Only has an effect if this BitmapText object contains multiple lines of text.
	**/
	function setLineSpacing(?spacing:Float):DynamicBitmapText;
	/**
		Set the textual content of this BitmapText.
		
		An array of strings will be converted into multi-line text. Use the align methods to change multi-line alignment.
	**/
	function setText(value:ts.AnyOf2<String, Array<String>>):DynamicBitmapText;
	/**
		Sets a drop shadow effect on this Bitmap Text.
		
		This is a WebGL only feature and only works with Static Bitmap Text, not Dynamic.
		
		You can set the vertical and horizontal offset of the shadow, as well as the color and alpha.
		
		Once a shadow has been enabled you can modify the `dropShadowX` and `dropShadowY` properties of this
		Bitmap Text directly to adjust the position of the shadow in real-time.
		
		If you wish to clear the shadow, call this method with no parameters specified.
	**/
	function setDropShadow(?x:Float, ?y:Float, ?color:Float, ?alpha:Float):DynamicBitmapText;
	/**
		Sets a tint on a range of characters in this Bitmap Text, starting from the `start` parameter index
		and running for `length` quantity of characters.
		
		The `start` parameter can be negative. In this case, it starts at the end of the text and counts
		backwards `start` places.
		
		You can also pass in -1 as the `length` and it will tint all characters from `start`
		up until the end of the string.
		Remember that spaces and punctuation count as characters.
		
		This is a WebGL only feature and only works with Static Bitmap Text, not Dynamic.
		
		The tint works by taking the pixel color values from the Bitmap Text texture, and then
		multiplying it by the color value of the tint. You can provide either one color value,
		in which case the whole character will be tinted in that color. Or you can provide a color
		per corner. The colors are blended together across the extent of the character range.
		
		To swap this from being an additive tint to a fill based tint, set the `tintFill` parameter to `true`.
		
		To modify the tint color once set, call this method again with new color values.
		
		Using `setWordTint` can override tints set by this function, and vice versa.
		
		To remove a tint call this method with just the `start`, and optionally, the `length` parameters defined.
	**/
	function setCharacterTint(?start:Float, ?length:Float, ?tintFill:Bool, ?topLeft:Float, ?topRight:Float, ?bottomLeft:Float, ?bottomRight:Float):DynamicBitmapText;
	/**
		Sets a tint on a matching word within this Bitmap Text.
		
		The `word` parameter can be either a string or a number.
		
		If a string, it will run a string comparison against the text contents, and if matching,
		it will tint the whole word.
		
		If a number, if till that word, based on its offset within the text contents.
		
		The `count` parameter controls how many words are replaced. Pass in -1 to replace them all.
		
		This parameter is ignored if you pass a number as the `word` to be searched for.
		
		This is a WebGL only feature and only works with Static Bitmap Text, not Dynamic.
		
		The tint works by taking the pixel color values from the Bitmap Text texture, and then
		multiplying it by the color value of the tint. You can provide either one color value,
		in which case the whole character will be tinted in that color. Or you can provide a color
		per corner. The colors are blended together across the extent of the character range.
		
		To swap this from being an additive tint to a fill based tint, set the `tintFill` parameter to `true`.
		
		To modify the tint color once set, call this method again with new color values.
		
		Using `setCharacterTint` can override tints set by this function, and vice versa.
	**/
	function setWordTint(word:ts.AnyOf2<String, Float>, ?count:Float, ?tintFill:Bool, ?topLeft:Float, ?topRight:Float, ?bottomLeft:Float, ?bottomRight:Float):DynamicBitmapText;
	/**
		Updates the Display Origin cached values internally stored on this Game Object.
		You don't usually call this directly, but it is exposed for edge-cases where you may.
	**/
	function updateDisplayOrigin():DynamicBitmapText;
	/**
		Changes the font this BitmapText is using to render.
		
		The new texture is loaded and applied to the BitmapText. The existing text, size and alignment are preserved,
		unless overridden via the arguments.
	**/
	function setFont(font:String, ?size:Float, ?align:Float):DynamicBitmapText;
	/**
		Sets the maximum display width of this BitmapText in pixels.
		
		If `BitmapText.text` is longer than `maxWidth` then the lines will be automatically wrapped
		based on the previous whitespace character found in the line.
		
		If no whitespace was found then no wrapping will take place and consequently the `maxWidth` value will not be honored.
		
		Disable maxWidth by setting the value to 0.
		
		You can set the whitespace character to be searched for by setting the `wordWrapCharCode` parameter or property.
	**/
	function setMaxWidth(value:Float, ?wordWrapCharCode:Float):DynamicBitmapText;
	/**
		Sets the `active` property of this Game Object and returns this Game Object for further chaining.
		A Game Object with its `active` property set to `true` will be updated by the Scenes UpdateList.
	**/
	function setActive(value:Bool):DynamicBitmapText;
	/**
		Sets the `name` property of this Game Object and returns this Game Object for further chaining.
		The `name` property is not populated by Phaser and is presented for your own use.
	**/
	function setName(value:String):DynamicBitmapText;
	/**
		Sets the current state of this Game Object.
		
		Phaser itself will never modify the State of a Game Object, although plugins may do so.
		
		For example, a Game Object could change from a state of 'moving', to 'attacking', to 'dead'.
		The state value should typically be an integer (ideally mapped to a constant
		in your game code), but could also be a string. It is recommended to keep it light and simple.
		If you need to store complex data about your Game Object, look at using the Data Component instead.
	**/
	function setState(value:ts.AnyOf2<String, Float>):DynamicBitmapText;
	/**
		Adds a Data Manager component to this Game Object.
	**/
	function setDataEnabled():DynamicBitmapText;
	/**
		Allows you to store a key value pair within this Game Objects Data Manager.
		
		If the Game Object has not been enabled for data (via `setDataEnabled`) then it will be enabled
		before setting the value.
		
		If the key doesn't already exist in the Data Manager then it is created.
		
		```javascript
		sprite.setData('name', 'Red Gem Stone');
		```
		
		You can also pass in an object of key value pairs as the first argument:
		
		```javascript
		sprite.setData({ name: 'Red Gem Stone', level: 2, owner: 'Link', gold: 50 });
		```
		
		To get a value back again you can call `getData`:
		
		```javascript
		sprite.getData('gold');
		```
		
		Or you can access the value directly via the `values` property, where it works like any other variable:
		
		```javascript
		sprite.data.values.gold += 50;
		```
		
		When the value is first set, a `setdata` event is emitted from this Game Object.
		
		If the key already exists, a `changedata` event is emitted instead, along an event named after the key.
		For example, if you updated an existing key called `PlayerLives` then it would emit the event `changedata-PlayerLives`.
		These events will be emitted regardless if you use this method to set the value, or the direct `values` setter.
		
		Please note that the data keys are case-sensitive and must be valid JavaScript Object property strings.
		This means the keys `gold` and `Gold` are treated as two unique values within the Data Manager.
	**/
	function setData<T>(key:ts.AnyOf2<String, T>, ?data:Dynamic):DynamicBitmapText;
	/**
		Increase a value for the given key within this Game Objects Data Manager. If the key doesn't already exist in the Data Manager then it is increased from 0.
		
		If the Game Object has not been enabled for data (via `setDataEnabled`) then it will be enabled
		before setting the value.
		
		If the key doesn't already exist in the Data Manager then it is created.
		
		When the value is first set, a `setdata` event is emitted from this Game Object.
	**/
	function incData(key:String, ?amount:Float):DynamicBitmapText;
	/**
		Toggle a boolean value for the given key within this Game Objects Data Manager. If the key doesn't already exist in the Data Manager then it is toggled from false.
		
		If the Game Object has not been enabled for data (via `setDataEnabled`) then it will be enabled
		before setting the value.
		
		If the key doesn't already exist in the Data Manager then it is created.
		
		When the value is first set, a `setdata` event is emitted from this Game Object.
	**/
	function toggleData(key:String):DynamicBitmapText;
	/**
		Pass this Game Object to the Input Manager to enable it for Input.
		
		Input works by using hit areas, these are nearly always geometric shapes, such as rectangles or circles, that act as the hit area
		for the Game Object. However, you can provide your own hit area shape and callback, should you wish to handle some more advanced
		input detection.
		
		If no arguments are provided it will try and create a rectangle hit area based on the texture frame the Game Object is using. If
		this isn't a texture-bound object, such as a Graphics or BitmapText object, this will fail, and you'll need to provide a specific
		shape for it to use.
		
		You can also provide an Input Configuration Object as the only argument to this method.
	**/
	function setInteractive(?hitArea:Dynamic, ?callback:phaser.types.input.HitAreaCallback, ?dropZone:Bool):DynamicBitmapText;
	/**
		If this Game Object has previously been enabled for input, this will disable it.
		
		An object that is disabled for input stops processing or being considered for
		input events, but can be turned back on again at any time by simply calling
		`setInteractive()` with no arguments provided.
		
		If want to completely remove interaction from this Game Object then use `removeInteractive` instead.
	**/
	function disableInteractive():DynamicBitmapText;
	/**
		If this Game Object has previously been enabled for input, this will queue it
		for removal, causing it to no longer be interactive. The removal happens on
		the next game step, it is not immediate.
		
		The Interactive Object that was assigned to this Game Object will be destroyed,
		removed from the Input Manager and cleared from this Game Object.
		
		If you wish to re-enable this Game Object at a later date you will need to
		re-create its InteractiveObject by calling `setInteractive` again.
		
		If you wish to only temporarily stop an object from receiving input then use
		`disableInteractive` instead, as that toggles the interactive state, where-as
		this erases it completely.
		
		If you wish to resize a hit area, don't remove and then set it as being
		interactive. Instead, access the hitarea object directly and resize the shape
		being used. I.e.: `sprite.input.hitArea.setSize(width, height)` (assuming the
		shape is a Rectangle, which it is by default.)
	**/
	function removeInteractive():DynamicBitmapText;
	/**
		Adds this Game Object to the given Display List.
		
		If no Display List is specified, it will default to the Display List owned by the Scene to which
		this Game Object belongs.
		
		A Game Object can only exist on one Display List at any given time, but may move freely between them.
		
		If this Game Object is already on another Display List when this method is called, it will first
		be removed from it, before being added to the new list.
		
		You can query which list it is on by looking at the `Phaser.GameObjects.GameObject#displayList` property.
		
		If a Game Object isn't on any display list, it will not be rendered. If you just wish to temporarly
		disable it from rendering, consider using the `setVisible` method, instead.
	**/
	function addToDisplayList(?displayList:ts.AnyOf2<Layer, DisplayList>):DynamicBitmapText;
	/**
		Adds this Game Object to the Update List belonging to the Scene.
		
		When a Game Object is added to the Update List it will have its `preUpdate` method called
		every game frame. This method is passed two parameters: `delta` and `time`.
		
		If you wish to run your own logic within `preUpdate` then you should always call
		`super.preUpdate(delta, time)` within it, or it may fail to process required operations,
		such as Sprite animations.
	**/
	function addToUpdateList():DynamicBitmapText;
	/**
		Removes this Game Object from the Display List it is currently on.
		
		A Game Object can only exist on one Display List at any given time, but may move freely removed
		and added back at a later stage.
		
		You can query which list it is on by looking at the `Phaser.GameObjects.GameObject#displayList` property.
		
		If a Game Object isn't on any Display List, it will not be rendered. If you just wish to temporarly
		disable it from rendering, consider using the `setVisible` method, instead.
	**/
	function removeFromDisplayList():DynamicBitmapText;
	/**
		Removes this Game Object from the Scene's Update List.
		
		When a Game Object is on the Update List, it will have its `preUpdate` method called
		every game frame. Calling this method will remove it from the list, preventing this.
		
		Removing a Game Object from the Update List will stop most internal functions working.
		For example, removing a Sprite from the Update List will prevent it from being able to
		run animations.
	**/
	function removeFromUpdateList():DynamicBitmapText;
	/**
		Add a listener for a given event.
	**/
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, fn:haxe.Constraints.Function, ?context:Dynamic):DynamicBitmapText;
	/**
		Add a listener for a given event.
	**/
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, fn:haxe.Constraints.Function, ?context:Dynamic):DynamicBitmapText;
	/**
		Add a one-time listener for a given event.
	**/
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, fn:haxe.Constraints.Function, ?context:Dynamic):DynamicBitmapText;
	/**
		Remove the listeners of a given event.
	**/
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, ?fn:haxe.Constraints.Function, ?context:Dynamic, ?once:Bool):DynamicBitmapText;
	/**
		Remove the listeners of a given event.
	**/
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, ?fn:haxe.Constraints.Function, ?context:Dynamic, ?once:Bool):DynamicBitmapText;
	/**
		Remove all listeners, or those of the specified event.
	**/
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):DynamicBitmapText;
	static var prototype : DynamicBitmapText;
}