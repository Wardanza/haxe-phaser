package phaser.core;

/**
	The active game configuration settings, parsed from a {@link Phaser.Types.Core.GameConfig} object.
**/
@:native("Phaser.Core.Config") extern class Config {
	function new(?GameConfig:phaser.types.core.GameConfig);
	/**
		The width of the underlying canvas, in pixels.
	**/
	final width : ts.AnyOf2<String, Float>;
	/**
		The height of the underlying canvas, in pixels.
	**/
	final height : ts.AnyOf2<String, Float>;
	/**
		The zoom factor, as used by the Scale Manager.
	**/
	final zoom : ts.AnyOf2<Float, phaser.scale.Zoom>;
	/**
		A parent DOM element into which the canvas created by the renderer will be injected.
	**/
	final parent : Dynamic;
	/**
		The scale mode as used by the Scale Manager. The default is zero, which is no scaling.
	**/
	final scaleMode : phaser.scale.ScaleModes;
	/**
		Is the Scale Manager allowed to adjust the CSS height property of the parent to be 100%?
	**/
	final expandParent : Bool;
	/**
		Automatically round the display and style sizes of the canvas. This can help with performance in lower-powered devices.
	**/
	final autoRound : Bool;
	/**
		Automatically center the canvas within the parent?
	**/
	final autoCenter : phaser.scale.Center;
	/**
		How many ms should elapse before checking if the browser size has changed?
	**/
	final resizeInterval : Float;
	/**
		The DOM element that will be sent into full screen mode, or its `id`. If undefined Phaser will create its own div and insert the canvas into it when entering fullscreen mode.
	**/
	final fullscreenTarget : Null<ts.AnyOf2<String, js.html.Element>>;
	/**
		The minimum width, in pixels, the canvas will scale down to. A value of zero means no minimum.
	**/
	final minWidth : Float;
	/**
		The maximum width, in pixels, the canvas will scale up to. A value of zero means no maximum.
	**/
	final maxWidth : Float;
	/**
		The minimum height, in pixels, the canvas will scale down to. A value of zero means no minimum.
	**/
	final minHeight : Float;
	/**
		The maximum height, in pixels, the canvas will scale up to. A value of zero means no maximum.
	**/
	final maxHeight : Float;
	/**
		The horizontal amount to snap the canvas by when the Scale Manager is resizing. A value of zero means no snapping.
	**/
	final snapWidth : Float;
	/**
		The vertical amount to snap the canvas by when the Scale Manager is resizing. A value of zero means no snapping.
	**/
	final snapHeight : Float;
	/**
		Force Phaser to use a specific renderer. Can be `CONST.CANVAS`, `CONST.WEBGL`, `CONST.HEADLESS` or `CONST.AUTO` (default)
	**/
	final renderType : Float;
	/**
		Force Phaser to use your own Canvas element instead of creating one.
	**/
	final canvas : Null<js.html.CanvasElement>;
	/**
		Force Phaser to use your own Canvas context instead of creating one.
	**/
	final context : Null<ts.AnyOf2<js.html.CanvasRenderingContext2D, js.html.webgl.RenderingContext>>;
	/**
		Optional CSS attributes to be set on the canvas object created by the renderer.
	**/
	final canvasStyle : Null<String>;
	/**
		Is Phaser running under a custom (non-native web) environment? If so, set this to `true` to skip internal Feature detection. If `true` the `renderType` cannot be left as `AUTO`.
	**/
	final customEnvironment : Bool;
	/**
		The default Scene configuration object.
	**/
	final sceneConfig : Null<Dynamic>;
	/**
		A seed which the Random Data Generator will use. If not given, a dynamic seed based on the time is used.
	**/
	final seed : Array<String>;
	/**
		The title of the game.
	**/
	final gameTitle : String;
	/**
		The URL of the game.
	**/
	final gameURL : String;
	/**
		The version of the game.
	**/
	final gameVersion : String;
	/**
		If `true` the window will automatically be given focus immediately and on any future mousedown event.
	**/
	final autoFocus : Bool;
	/**
		`false` or `0` = Use the built-in StableSort (needed for older browsers), `true` or `1` = Rely on ES2019 Array.sort being stable (modern browsers only), or `-1` = Try and determine this automatically based on browser inspection (not guaranteed to work, errs on side of caution).
	**/
	final stableSort : ts.AnyOf2<Float, Bool>;
	/**
		Should the game create a div element to act as a DOM Container? Only enable if you're using DOM Element objects. You must provide a parent object if you use this feature.
	**/
	final domCreateContainer : Null<Bool>;
	/**
		The default `pointerEvents` attribute set on the DOM Container.
	**/
	final domPointerEvents : Null<String>;
	/**
		Enable the Keyboard Plugin. This can be disabled in games that don't need keyboard input.
	**/
	final inputKeyboard : Bool;
	/**
		The DOM Target to listen for keyboard events on. Defaults to `window` if not specified.
	**/
	final inputKeyboardEventTarget : Dynamic;
	/**
		`preventDefault` will be called on every non-modified key which has a key code in this array. By default, it is empty.
	**/
	final inputKeyboardCapture : Null<Array<Float>>;
	/**
		Enable the Mouse Plugin. This can be disabled in games that don't need mouse input.
	**/
	final inputMouse : ts.AnyOf2<Bool, Dynamic>;
	/**
		The DOM Target to listen for mouse events on. Defaults to the game canvas if not specified.
	**/
	final inputMouseEventTarget : Dynamic;
	/**
		Should `mousedown` DOM events have `preventDefault` called on them?
	**/
	final inputMousePreventDefaultDown : Bool;
	/**
		Should `mouseup` DOM events have `preventDefault` called on them?
	**/
	final inputMousePreventDefaultUp : Bool;
	/**
		Should `mousemove` DOM events have `preventDefault` called on them?
	**/
	final inputMousePreventDefaultMove : Bool;
	/**
		Should `wheel` DOM events have `preventDefault` called on them?
	**/
	final inputMousePreventDefaultWheel : Bool;
	/**
		Enable the Touch Plugin. This can be disabled in games that don't need touch input.
	**/
	final inputTouch : Bool;
	/**
		The DOM Target to listen for touch events on. Defaults to the game canvas if not specified.
	**/
	final inputTouchEventTarget : Dynamic;
	/**
		Should touch events be captured? I.e. have prevent default called on them.
	**/
	final inputTouchCapture : Bool;
	/**
		The number of Pointer objects created by default. In a mouse-only, or non-multi touch game, you can leave this as 1.
	**/
	final inputActivePointers : Float;
	/**
		The smoothing factor to apply during Pointer movement. See {@link Phaser.Input.Pointer#smoothFactor}.
	**/
	final inputSmoothFactor : Float;
	/**
		Should Phaser listen for input events on the Window? If you disable this, events like 'POINTER_UP_OUTSIDE' will no longer fire.
	**/
	final inputWindowEvents : Bool;
	/**
		Enable the Gamepad Plugin. This can be disabled in games that don't need gamepad input.
	**/
	final inputGamepad : Bool;
	/**
		The DOM Target to listen for gamepad events on. Defaults to `window` if not specified.
	**/
	final inputGamepadEventTarget : Dynamic;
	/**
		Set to `true` to disable the right-click context menu.
	**/
	final disableContextMenu : Bool;
	/**
		The Audio Configuration object.
	**/
	final audio : phaser.types.core.AudioConfig;
	/**
		Don't write the banner line to the console.log.
	**/
	final hideBanner : Bool;
	/**
		Omit Phaser's name and version from the banner.
	**/
	final hidePhaser : Bool;
	/**
		The color of the banner text.
	**/
	final bannerTextColor : String;
	/**
		The background colors of the banner.
	**/
	final bannerBackgroundColor : Array<String>;
	/**
		The Frame Rate Configuration object, as parsed by the Timestep class.
	**/
	final fps : phaser.types.core.FPSConfig;
	/**
		Disables the automatic creation of the Pre FX Pipelines. If disabled, you cannot use the built-in Pre FX on Game Objects.
	**/
	final disablePreFX : Bool;
	/**
		Disables the automatic creation of the Post FX Pipelines. If disabled, you cannot use the built-in Post FX on Game Objects.
	**/
	final disablePostFX : Bool;
	/**
		An object mapping WebGL names to WebGLPipeline classes. These should be class constructors, not instances.
	**/
	final pipeline : ts.AnyOf2<phaser.types.core.PipelineConfig, Array<phaser.renderer.webgl.WebGLPipeline>>;
	/**
		Automatically enable the Mobile Pipeline if iOS or Android detected?
	**/
	final autoMobilePipeline : Bool;
	/**
		The WebGL Pipeline that Game Objects will use by default. Set to 'MultiPipeline' as standard. See also 'autoMobilePipeline'.
	**/
	final defaultPipeline : String;
	/**
		When set to `true`, WebGL uses linear interpolation to draw scaled or rotated textures, giving a smooth appearance. When set to `false`, WebGL uses nearest-neighbor interpolation, giving a crisper appearance. `false` also disables antialiasing of the game canvas itself, if the browser supports it, when the game canvas is scaled.
	**/
	final antialias : Bool;
	/**
		Sets the `antialias` property when the WebGL context is created. Setting this value does not impact any subsequent textures that are created, or the canvas style attributes.
	**/
	final antialiasGL : Bool;
	/**
		Sets the mipmap magFilter to be used when creating WebGL textures. Don't set unless you wish to create mipmaps. Set to one of the following: 'NEAREST', 'LINEAR', 'NEAREST_MIPMAP_NEAREST', 'LINEAR_MIPMAP_NEAREST', 'NEAREST_MIPMAP_LINEAR' or 'LINEAR_MIPMAP_LINEAR'.
	**/
	final mipmapFilter : String;
	/**
		When set to `true` it will create a desynchronized context for both 2D and WebGL. See https://developers.google.com/web/updates/2019/05/desynchronized for details.
	**/
	final desynchronized : Bool;
	/**
		Draw texture-based Game Objects at only whole-integer positions. Game Objects without textures, like Graphics, ignore this property.
	**/
	final roundPixels : Bool;
	/**
		Prevent pixel art from becoming blurred when scaled. It will remain crisp (tells the WebGL renderer to automatically create textures using a linear filter mode).
	**/
	final pixelArt : Bool;
	/**
		Whether the game canvas will have a transparent background.
	**/
	final transparent : Bool;
	/**
		Whether the game canvas will be cleared between each rendering frame. You can disable this if you have a full-screen background image or game object.
	**/
	final clearBeforeRender : Bool;
	/**
		If the value is true the WebGL buffers will not be cleared and will preserve their values until cleared or overwritten by the author.
	**/
	final preserveDrawingBuffer : Bool;
	/**
		In WebGL mode, sets the drawing buffer to contain colors with pre-multiplied alpha.
	**/
	final premultipliedAlpha : Bool;
	/**
		Let the browser abort creating a WebGL context if it judges performance would be unacceptable.
	**/
	final failIfMajorPerformanceCaveat : Bool;
	/**
		"high-performance", "low-power" or "default". A hint to the browser on how much device power the game might use.
	**/
	final powerPreference : String;
	/**
		The default WebGL Batch size. Represents the number of _quads_ that can be added to a single batch.
	**/
	final batchSize : Float;
	/**
		When in WebGL mode, this sets the maximum number of GPU Textures to use. The default, -1, will use all available units. The WebGL1 spec says all browsers should provide a minimum of 8.
	**/
	final maxTextures : Float;
	/**
		The maximum number of lights allowed to be visible within range of a single Camera in the LightManager.
	**/
	final maxLights : Float;
	/**
		The background color of the game canvas. The default is black. This value is ignored if `transparent` is set to `true`.
	**/
	final backgroundColor : phaser.display.Color;
	/**
		Called before Phaser boots. Useful for initializing anything not related to Phaser that Phaser may require while booting.
	**/
	function preBoot(game:phaser.Game):Void;
	/**
		A function to run at the end of the boot sequence. At this point, all the game systems have started and plugins have been loaded.
	**/
	function postBoot(game:phaser.Game):Void;
	/**
		The Physics Configuration object.
	**/
	final physics : phaser.types.core.PhysicsConfig;
	/**
		The default physics system. It will be started for each scene. Either 'arcade', 'impact' or 'matter'.
	**/
	final defaultPhysicsSystem : ts.AnyOf2<String, Bool>;
	/**
		A URL used to resolve paths given to the loader. Example: 'http://labs.phaser.io/assets/'.
	**/
	final loaderBaseURL : String;
	/**
		A URL path used to resolve relative paths given to the loader. Example: 'images/sprites/'.
	**/
	final loaderPath : String;
	/**
		Maximum parallel downloads allowed for resources (Default to 32).
	**/
	final loaderMaxParallelDownloads : Float;
	/**
		'anonymous', 'use-credentials', or `undefined`. If you're not making cross-origin requests, leave this as `undefined`. See {@link https://developer.mozilla.org/en-US/docs/Web/HTML/CORS_settings_attributes}.
	**/
	final loaderCrossOrigin : Null<String>;
	/**
		The response type of the XHR request, e.g. `blob`, `text`, etc.
	**/
	final loaderResponseType : String;
	/**
		Should the XHR request use async or not?
	**/
	final loaderAsync : Bool;
	/**
		Optional username for all XHR requests.
	**/
	final loaderUser : String;
	/**
		Optional password for all XHR requests.
	**/
	final loaderPassword : String;
	/**
		Optional XHR timeout value, in ms.
	**/
	final loaderTimeout : Float;
	/**
		Optional XHR withCredentials value.
	**/
	final loaderWithCredentials : Bool;
	/**
		Optional load type for image, `XHR` is default, or `HTMLImageElement` for a lightweight way.
	**/
	final loaderImageLoadType : String;
	/**
		An array of schemes that the Loader considers as being 'local' files. Defaults to: `[ 'file://', 'capacitor://' ]`.
	**/
	final loaderLocalScheme : Array<String>;
	/**
		The quality of the Glow FX (defaults to 0.1)
	**/
	final glowFXQuality : Float;
	/**
		The distance of the Glow FX (defaults to 10)
	**/
	final glowFXDistance : Float;
	/**
		An array of global plugins to be installed.
	**/
	final installGlobalPlugins : Dynamic;
	/**
		An array of Scene level plugins to be installed.
	**/
	final installScenePlugins : Dynamic;
	/**
		The plugins installed into every Scene (in addition to CoreScene and Global).
	**/
	final defaultPlugins : Dynamic;
	/**
		A base64 encoded PNG that will be used as the default blank texture.
	**/
	final defaultImage : String;
	/**
		A base64 encoded PNG that will be used as the default texture when a texture is assigned that is missing or not loaded.
	**/
	final missingImage : String;
	/**
		A base64 encoded PNG that will be used as the default texture when a texture is assigned that is white or not loaded.
	**/
	final whiteImage : String;
	static var prototype : Config;
}