package phaser.gameobjects;

/**
	The Grid Shape is a Game Object that can be added to a Scene, Group or Container. You can
	treat it like any other Game Object in your game, such as tweening it, scaling it, or enabling
	it for input or physics. It provides a quick and easy way for you to render this shape in your
	game without using a texture, while still taking advantage of being fully batched in WebGL.
	
	This shape supports only fill colors and cannot be stroked.
	
	A Grid Shape allows you to display a grid in your game, where you can control the size of the
	grid as well as the width and height of the grid cells. You can set a fill color for each grid
	cell as well as an alternate fill color. When the alternate fill color is set then the grid
	cells will alternate the fill colors as they render, creating a chess-board effect. You can
	also optionally have an outline fill color. If set, this draws lines between the grid cells
	in the given color. If you specify an outline color with an alpha of zero, then it will draw
	the cells spaced out, but without the lines between them.
**/
@:native("Phaser.GameObjects.Grid") extern class Grid extends Shape {
	function new(scene:phaser.Scene, ?x:Float, ?y:Float, ?width:Float, ?height:Float, ?cellWidth:Float, ?cellHeight:Float, ?fillColor:Float, ?fillAlpha:Float, ?outlineFillColor:Float, ?outlineFillAlpha:Float);
	/**
		The width of each grid cell.
		Must be a positive value.
	**/
	var cellWidth : Float;
	/**
		The height of each grid cell.
		Must be a positive value.
	**/
	var cellHeight : Float;
	/**
		Will the grid render its cells in the `fillColor`?
	**/
	var showCells : Bool;
	/**
		The color of the lines between each grid cell.
	**/
	var outlineFillColor : Float;
	/**
		The alpha value for the color of the lines between each grid cell.
	**/
	var outlineFillAlpha : Float;
	/**
		Will the grid display the lines between each cell when it renders?
	**/
	var showOutline : Bool;
	/**
		Will the grid render the alternating cells in the `altFillColor`?
	**/
	var showAltCells : Bool;
	/**
		The color the alternating grid cells will be filled with, i.e. 0xff0000 for red.
	**/
	var altFillColor : Float;
	/**
		The alpha the alternating grid cells will be filled with.
		You can also set the alpha of the overall Shape using its `alpha` property.
	**/
	var altFillAlpha : Float;
	/**
		Sets the fill color and alpha level the grid cells will use when rendering.
		
		If this method is called with no values then the grid cells will not be rendered,
		however the grid lines and alternating cells may still be.
		
		Also see the `setOutlineStyle` and `setAltFillStyle` methods.
		
		This call can be chained.
	**/
	function setFillStyle(?fillColor:Float, ?fillAlpha:Float):Grid;
	/**
		Sets the fill color and alpha level that the alternating grid cells will use.
		
		If this method is called with no values then alternating grid cells will not be rendered in a different color.
		
		Also see the `setOutlineStyle` and `setFillStyle` methods.
		
		This call can be chained.
	**/
	function setAltFillStyle(?fillColor:Float, ?fillAlpha:Float):Grid;
	/**
		Sets the fill color and alpha level that the lines between each grid cell will use.
		
		If this method is called with no values then the grid lines will not be rendered at all, however
		the cells themselves may still be if they have colors set.
		
		Also see the `setFillStyle` and `setAltFillStyle` methods.
		
		This call can be chained.
	**/
	function setOutlineStyle(?fillColor:Float, ?fillAlpha:Float):Grid;
	/**
		Clears all alpha values associated with this Game Object.
		
		Immediately sets the alpha levels back to 1 (fully opaque).
	**/
	function clearAlpha():Grid;
	/**
		Set the Alpha level of this Game Object. The alpha controls the opacity of the Game Object as it renders.
		Alpha values are provided as a float between 0, fully transparent, and 1, fully opaque.
	**/
	function setAlpha(?value:Float):Grid;
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
	function setBlendMode(value:ts.AnyOf3<String, Float, phaser.BlendModes>):Grid;
	/**
		The depth of this Game Object within the Scene.
		
		The depth is also known as the 'z-index' in some environments, and allows you to change the rendering order
		of Game Objects, without actually moving their position in the display list.
		
		The default depth is zero. A Game Object with a higher depth
		value will always render in front of one with a lower value.
		
		Setting the depth will queue a depth sort event within the Scene.
	**/
	function setDepth(value:Float):Grid;
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
	function setMask(mask:ts.AnyOf2<phaser.display.masks.BitmapMask, phaser.display.masks.GeometryMask>):Grid;
	/**
		Clears the mask that this Game Object was using.
	**/
	function clearMask(?destroyMask:Bool):Grid;
	/**
		Sets the origin of this Game Object.
		
		The values are given in the range 0 to 1.
	**/
	function setOrigin(?x:Float, ?y:Float):Grid;
	/**
		Sets the origin of this Game Object based on the Pivot values in its Frame.
	**/
	function setOriginFromFrame():Grid;
	/**
		Sets the display origin of this Game Object.
		The difference between this and setting the origin is that you can use pixel values for setting the display origin.
	**/
	function setDisplayOrigin(?x:Float, ?y:Float):Grid;
	/**
		Updates the Display Origin cached values internally stored on this Game Object.
		You don't usually call this directly, but it is exposed for edge-cases where you may.
	**/
	function updateDisplayOrigin():Grid;
	/**
		Sets the main WebGL Pipeline of this Game Object.
		
		Also sets the `pipelineData` property, if the parameter is given.
	**/
	function setPipeline(pipeline:ts.AnyOf2<String, phaser.renderer.webgl.WebGLPipeline>, ?pipelineData:Dynamic, ?copyData:Bool):Grid;
	/**
		Adds an entry to the `pipelineData` object belonging to this Game Object.
		
		If the 'key' already exists, its value is updated. If it doesn't exist, it is created.
		
		If `value` is undefined, and `key` exists, `key` is removed from the data object.
	**/
	function setPipelineData(key:String, ?value:Dynamic):Grid;
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
	function setPostPipeline(pipelines:ts.AnyOf6<String, haxe.Constraints.Function, Array<String>, Array<haxe.Constraints.Function>, phaser.renderer.webgl.pipelines.PostFXPipeline, Array<phaser.renderer.webgl.pipelines.PostFXPipeline>>, ?pipelineData:Dynamic, ?copyData:Bool):Grid;
	/**
		Adds an entry to the `postPipelineData` object belonging to this Game Object.
		
		If the 'key' already exists, its value is updated. If it doesn't exist, it is created.
		
		If `value` is undefined, and `key` exists, `key` is removed from the data object.
	**/
	function setPostPipelineData(key:String, ?value:Dynamic):Grid;
	/**
		Removes a type of Post Pipeline instances from this Game Object, based on the given name, and destroys them.
		
		If you wish to remove all Post Pipelines use the `resetPostPipeline` method instead.
	**/
	function removePostPipeline(pipeline:ts.AnyOf2<String, phaser.renderer.webgl.pipelines.PostFXPipeline>):Grid;
	/**
		Removes all Pre and Post FX Controllers from this Game Object.
		
		If you wish to remove a single controller, use the `preFX.remove(fx)` or `postFX.remove(fx)` methods instead.
		
		If you wish to clear a single controller, use the `preFX.clear()` or `postFX.clear()` methods instead.
	**/
	function clearFX():Grid;
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
	function setScrollFactor(x:Float, ?y:Float):Grid;
	/**
		Sets the position of this Game Object.
	**/
	function setPosition(?x:Float, ?y:Float, ?z:Float, ?w:Float):Grid;
	/**
		Copies an object's coordinates to this Game Object's position.
	**/
	function copyPosition(source:ts.AnyOf3<phaser.types.math.Vector2Like, phaser.types.math.Vector3Like, phaser.types.math.Vector4Like>):Grid;
	/**
		Sets the position of this Game Object to be a random position within the confines of
		the given area.
		
		If no area is specified a random position between 0 x 0 and the game width x height is used instead.
		
		The position does not factor in the size of this Game Object, meaning that only the origin is
		guaranteed to be within the area.
	**/
	function setRandomPosition(?x:Float, ?y:Float, ?width:Float, ?height:Float):Grid;
	/**
		Sets the rotation of this Game Object.
	**/
	function setRotation(?radians:Float):Grid;
	/**
		Sets the angle of this Game Object.
	**/
	function setAngle(?degrees:Float):Grid;
	/**
		Sets the scale of this Game Object.
	**/
	function setScale(?x:Float, ?y:Float):Grid;
	/**
		Sets the x position of this Game Object.
	**/
	function setX(?value:Float):Grid;
	/**
		Sets the y position of this Game Object.
	**/
	function setY(?value:Float):Grid;
	/**
		Sets the z position of this Game Object.
		
		Note: The z position does not control the rendering order of 2D Game Objects. Use
		{@link Phaser.GameObjects.Components.Depth#setDepth} instead.
	**/
	function setZ(?value:Float):Grid;
	/**
		Sets the w position of this Game Object.
	**/
	function setW(?value:Float):Grid;
	/**
		Sets the visibility of this Game Object.
		
		An invisible Game Object will skip rendering, but will still process update logic.
	**/
	function setVisible(value:Bool):Grid;
	/**
		Sets the stroke color and alpha for this Shape.
		
		If you wish for the Shape to not be stroked then call this method with no arguments, or just set `isStroked` to `false`.
		
		Note that some Shapes do not support being stroked, such as the Iso Box shape.
		
		This call can be chained.
	**/
	function setStrokeStyle(?lineWidth:Float, ?color:Float, ?alpha:Float):Grid;
	/**
		Sets if this Shape path is closed during rendering when stroked.
		Note that some Shapes are always closed when stroked (such as Ellipse shapes)
		
		This call can be chained.
	**/
	function setClosePath(value:Bool):Grid;
	/**
		Sets the display size of this Shape.
		
		Calling this will adjust the scale.
	**/
	function setDisplaySize(width:Float, height:Float):Grid;
	/**
		Sets the `active` property of this Game Object and returns this Game Object for further chaining.
		A Game Object with its `active` property set to `true` will be updated by the Scenes UpdateList.
	**/
	function setActive(value:Bool):Grid;
	/**
		Sets the `name` property of this Game Object and returns this Game Object for further chaining.
		The `name` property is not populated by Phaser and is presented for your own use.
	**/
	function setName(value:String):Grid;
	/**
		Sets the current state of this Game Object.
		
		Phaser itself will never modify the State of a Game Object, although plugins may do so.
		
		For example, a Game Object could change from a state of 'moving', to 'attacking', to 'dead'.
		The state value should typically be an integer (ideally mapped to a constant
		in your game code), but could also be a string. It is recommended to keep it light and simple.
		If you need to store complex data about your Game Object, look at using the Data Component instead.
	**/
	function setState(value:ts.AnyOf2<String, Float>):Grid;
	/**
		Adds a Data Manager component to this Game Object.
	**/
	function setDataEnabled():Grid;
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
	function setData<T>(key:ts.AnyOf2<String, T>, ?data:Dynamic):Grid;
	/**
		Increase a value for the given key within this Game Objects Data Manager. If the key doesn't already exist in the Data Manager then it is increased from 0.
		
		If the Game Object has not been enabled for data (via `setDataEnabled`) then it will be enabled
		before setting the value.
		
		If the key doesn't already exist in the Data Manager then it is created.
		
		When the value is first set, a `setdata` event is emitted from this Game Object.
	**/
	function incData(key:String, ?amount:Float):Grid;
	/**
		Toggle a boolean value for the given key within this Game Objects Data Manager. If the key doesn't already exist in the Data Manager then it is toggled from false.
		
		If the Game Object has not been enabled for data (via `setDataEnabled`) then it will be enabled
		before setting the value.
		
		If the key doesn't already exist in the Data Manager then it is created.
		
		When the value is first set, a `setdata` event is emitted from this Game Object.
	**/
	function toggleData(key:String):Grid;
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
	function setInteractive(?hitArea:Dynamic, ?callback:phaser.types.input.HitAreaCallback, ?dropZone:Bool):Grid;
	/**
		If this Game Object has previously been enabled for input, this will disable it.
		
		An object that is disabled for input stops processing or being considered for
		input events, but can be turned back on again at any time by simply calling
		`setInteractive()` with no arguments provided.
		
		If want to completely remove interaction from this Game Object then use `removeInteractive` instead.
	**/
	function disableInteractive():Grid;
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
	function removeInteractive():Grid;
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
	function addToDisplayList(?displayList:ts.AnyOf2<Layer, DisplayList>):Grid;
	/**
		Adds this Game Object to the Update List belonging to the Scene.
		
		When a Game Object is added to the Update List it will have its `preUpdate` method called
		every game frame. This method is passed two parameters: `delta` and `time`.
		
		If you wish to run your own logic within `preUpdate` then you should always call
		`super.preUpdate(delta, time)` within it, or it may fail to process required operations,
		such as Sprite animations.
	**/
	function addToUpdateList():Grid;
	/**
		Removes this Game Object from the Display List it is currently on.
		
		A Game Object can only exist on one Display List at any given time, but may move freely removed
		and added back at a later stage.
		
		You can query which list it is on by looking at the `Phaser.GameObjects.GameObject#displayList` property.
		
		If a Game Object isn't on any Display List, it will not be rendered. If you just wish to temporarly
		disable it from rendering, consider using the `setVisible` method, instead.
	**/
	function removeFromDisplayList():Grid;
	/**
		Removes this Game Object from the Scene's Update List.
		
		When a Game Object is on the Update List, it will have its `preUpdate` method called
		every game frame. Calling this method will remove it from the list, preventing this.
		
		Removing a Game Object from the Update List will stop most internal functions working.
		For example, removing a Sprite from the Update List will prevent it from being able to
		run animations.
	**/
	function removeFromUpdateList():Grid;
	/**
		Add a listener for a given event.
	**/
	function on(event:ts.AnyOf2<String, js.lib.Symbol>, fn:haxe.Constraints.Function, ?context:Dynamic):Grid;
	/**
		Add a listener for a given event.
	**/
	function addListener(event:ts.AnyOf2<String, js.lib.Symbol>, fn:haxe.Constraints.Function, ?context:Dynamic):Grid;
	/**
		Add a one-time listener for a given event.
	**/
	function once(event:ts.AnyOf2<String, js.lib.Symbol>, fn:haxe.Constraints.Function, ?context:Dynamic):Grid;
	/**
		Remove the listeners of a given event.
	**/
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, ?fn:haxe.Constraints.Function, ?context:Dynamic, ?once:Bool):Grid;
	/**
		Remove the listeners of a given event.
	**/
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, ?fn:haxe.Constraints.Function, ?context:Dynamic, ?once:Bool):Grid;
	/**
		Remove all listeners, or those of the specified event.
	**/
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Grid;
	static var prototype : Grid;
}