package phaser.physics.arcade;

/**
	A Static Arcade Physics Body.
	
	A Static Body never moves, and isn't automatically synchronized with its parent Game Object.
	That means if you make any change to the parent's origin, position, or scale after creating or adding the body, you'll need to update the Static Body manually.
	
	A Static Body can collide with other Bodies, but is never moved by collisions.
	
	Its dynamic counterpart is {@link Phaser.Physics.Arcade.Body}.
**/
@:native("Phaser.Physics.Arcade.StaticBody") extern class StaticBody {
	function new(world:World, ?gameObject:phaser.gameobjects.GameObject);
	/**
		The Arcade Physics simulation this Static Body belongs to.
	**/
	var world : World;
	/**
		The Game Object this Static Body belongs to.
		
		As of Phaser 3.60 this is now optional and can be undefined.
	**/
	var gameObject : phaser.gameobjects.GameObject;
	/**
		A quick-test flag that signifies this is a Body, used in the World collision handler.
	**/
	final isBody : Bool;
	/**
		Whether the Static Body's boundary is drawn to the debug display.
	**/
	var debugShowBody : Bool;
	/**
		The color of this Static Body on the debug display.
	**/
	var debugBodyColor : Float;
	/**
		Whether this Static Body is updated by the physics simulation.
	**/
	var enable : Bool;
	/**
		Whether this Static Body's boundary is circular (`true`) or rectangular (`false`).
	**/
	var isCircle : Bool;
	/**
		If this Static Body is circular, this is the radius of the boundary, as set by {@link Phaser.Physics.Arcade.StaticBody#setCircle}, in pixels.
		Equal to `halfWidth`.
	**/
	var radius : Float;
	/**
		The offset set by {@link Phaser.Physics.Arcade.StaticBody#setCircle} or {@link Phaser.Physics.Arcade.StaticBody#setSize}.
		
		This doesn't affect the Static Body's position, because a Static Body does not follow its Game Object.
	**/
	final offset : phaser.math.Vector2;
	/**
		The position of this Static Body within the simulation.
	**/
	var position : phaser.math.Vector2;
	/**
		The width of the Static Body's boundary, in pixels.
		If the Static Body is circular, this is also the Static Body's diameter.
	**/
	var width : Float;
	/**
		The height of the Static Body's boundary, in pixels.
		If the Static Body is circular, this is also the Static Body's diameter.
	**/
	var height : Float;
	/**
		Half the Static Body's width, in pixels.
		If the Static Body is circular, this is also the Static Body's radius.
	**/
	var halfWidth : Float;
	/**
		Half the Static Body's height, in pixels.
		If the Static Body is circular, this is also the Static Body's radius.
	**/
	var halfHeight : Float;
	/**
		The center of the Static Body's boundary.
		This is the midpoint of its `position` (top-left corner) and its bottom-right corner.
	**/
	var center : phaser.math.Vector2;
	/**
		A constant zero velocity used by the Arcade Physics simulation for calculations.
	**/
	final velocity : phaser.math.Vector2;
	/**
		A constant `false` value expected by the Arcade Physics simulation.
	**/
	final allowGravity : Bool;
	/**
		Gravitational force applied specifically to this Body. Values are in pixels per second squared. Always zero for a Static Body.
	**/
	final gravity : phaser.math.Vector2;
	/**
		Rebound, or restitution, following a collision, relative to 1. Always zero for a Static Body.
	**/
	final bounce : phaser.math.Vector2;
	/**
		Whether the simulation emits a `worldbounds` event when this StaticBody collides with the world boundary.
		Always false for a Static Body. (Static Bodies never collide with the world boundary and never trigger a `worldbounds` event.)
	**/
	final onWorldBounds : Bool;
	/**
		Whether the simulation emits a `collide` event when this StaticBody collides with another.
	**/
	var onCollide : Bool;
	/**
		Whether the simulation emits an `overlap` event when this StaticBody overlaps with another.
	**/
	var onOverlap : Bool;
	/**
		The StaticBody's inertia, relative to a default unit (1). With `bounce`, this affects the exchange of momentum (velocities) during collisions.
	**/
	var mass : Float;
	/**
		Whether this object can be moved by collisions with another body.
	**/
	var immovable : Bool;
	/**
		Sets if this Body can be pushed by another Body.
		
		A body that cannot be pushed will reflect back all of the velocity it is given to the
		colliding body. If that body is also not pushable, then the separation will be split
		between them evenly.
		
		If you want your body to never move or seperate at all, see the `setImmovable` method.
		
		By default, Static Bodies are not pushable.
	**/
	var pushable : Bool;
	/**
		A flag disabling the default horizontal separation of colliding bodies. Pass your own `collideHandler` to the collider.
	**/
	var customSeparateX : Bool;
	/**
		A flag disabling the default vertical separation of colliding bodies. Pass your own `collideHandler` to the collider.
	**/
	var customSeparateY : Bool;
	/**
		The amount of horizontal overlap (before separation), if this Body is colliding with another.
	**/
	var overlapX : Float;
	/**
		The amount of vertical overlap (before separation), if this Body is colliding with another.
	**/
	var overlapY : Float;
	/**
		The amount of overlap (before separation), if this StaticBody is circular and colliding with another circular body.
	**/
	var overlapR : Float;
	/**
		Whether this StaticBody has ever overlapped with another while both were not moving.
	**/
	var embedded : Bool;
	/**
		Whether this StaticBody interacts with the world boundary.
		Always false for a Static Body. (Static Bodies never collide with the world boundary.)
	**/
	final collideWorldBounds : Bool;
	/**
		Whether this StaticBody is checked for collisions and for which directions. You can set `checkCollision.none = false` to disable collision checks.
	**/
	var checkCollision : phaser.types.physics.arcade.ArcadeBodyCollision;
	/**
		This property is kept for compatibility with Dynamic Bodies.
		Avoid using it.
	**/
	var touching : phaser.types.physics.arcade.ArcadeBodyCollision;
	/**
		This property is kept for compatibility with Dynamic Bodies.
		Avoid using it.
		The values are always false for a Static Body.
	**/
	var wasTouching : phaser.types.physics.arcade.ArcadeBodyCollision;
	/**
		This property is kept for compatibility with Dynamic Bodies.
		Avoid using it.
	**/
	var blocked : phaser.types.physics.arcade.ArcadeBodyCollision;
	/**
		The StaticBody's physics type (static by default).
	**/
	var physicsType : Float;
	/**
		The Arcade Physics Body Collision Category.
		
		This can be set to any valid collision bitfield value.
		
		See the `setCollisionCategory` method for more details.
	**/
	var collisionCategory : Float;
	/**
		The Arcade Physics Body Collision Mask.
		
		See the `setCollidesWith` method for more details.
	**/
	var collisionMask : Float;
	/**
		Changes the Game Object this Body is bound to.
		First it removes its reference from the old Game Object, then sets the new one.
		You can optionally update the position and dimensions of this Body to reflect that of the new Game Object.
	**/
	function setGameObject(gameObject:phaser.gameobjects.GameObject, ?update:Bool):StaticBody;
	/**
		Syncs the Static Body's position and size with its parent Game Object.
	**/
	function updateFromGameObject():StaticBody;
	/**
		Positions the Static Body at an offset from its Game Object.
	**/
	function setOffset(x:Float, y:Float):StaticBody;
	/**
		Sets the size of the Static Body.
		When `center` is true, also repositions it.
		Resets the width and height to match current frame, if no width and height provided and a frame is found.
	**/
	function setSize(?width:Float, ?height:Float, ?center:Bool):StaticBody;
	/**
		Sets this Static Body to have a circular body and sets its size and position.
	**/
	function setCircle(radius:Float, ?offsetX:Float, ?offsetY:Float):StaticBody;
	/**
		Updates the StaticBody's `center` from its `position` and dimensions.
	**/
	function updateCenter():Void;
	/**
		Resets this Static Body to its parent Game Object's position.
		
		If `x` and `y` are given, the parent Game Object is placed there and this Static Body is centered on it.
		Otherwise this Static Body is centered on the Game Object's current position.
	**/
	function reset(?x:Float, ?y:Float):Void;
	/**
		NOOP function. A Static Body cannot be stopped.
	**/
	function stop():StaticBody;
	/**
		Returns the x and y coordinates of the top left and bottom right points of the StaticBody.
	**/
	function getBounds(obj:phaser.types.physics.arcade.ArcadeBodyBounds):phaser.types.physics.arcade.ArcadeBodyBounds;
	/**
		Checks to see if a given x,y coordinate is colliding with this Static Body.
	**/
	function hitTest(x:Float, y:Float):Bool;
	/**
		NOOP
	**/
	function postUpdate():Void;
	/**
		The absolute (non-negative) change in this StaticBody's horizontal position from the previous step. Always zero.
	**/
	function deltaAbsX():Float;
	/**
		The absolute (non-negative) change in this StaticBody's vertical position from the previous step. Always zero.
	**/
	function deltaAbsY():Float;
	/**
		The change in this StaticBody's horizontal position from the previous step. Always zero.
	**/
	function deltaX():Float;
	/**
		The change in this StaticBody's vertical position from the previous step. Always zero.
	**/
	function deltaY():Float;
	/**
		The change in this StaticBody's rotation from the previous step. Always zero.
	**/
	function deltaZ():Float;
	/**
		Disables this Body and marks it for destruction during the next step.
	**/
	function destroy():Void;
	/**
		Draws a graphical representation of the StaticBody for visual debugging purposes.
	**/
	function drawDebug(graphic:phaser.gameobjects.Graphics):Void;
	/**
		Indicates whether the StaticBody is going to be showing a debug visualization during postUpdate.
	**/
	function willDrawDebug():Bool;
	/**
		Sets the Mass of the StaticBody. Will set the Mass to 0.1 if the value passed is less than or equal to zero.
	**/
	function setMass(value:Float):StaticBody;
	/**
		The x coordinate of the StaticBody.
	**/
	var x : Float;
	/**
		The y coordinate of the StaticBody.
	**/
	var y : Float;
	/**
		Returns the left-most x coordinate of the area of the StaticBody.
	**/
	final left : Float;
	/**
		The right-most x coordinate of the area of the StaticBody.
	**/
	final right : Float;
	/**
		The highest y coordinate of the area of the StaticBody.
	**/
	final top : Float;
	/**
		The lowest y coordinate of the area of the StaticBody. (y + height)
	**/
	final bottom : Float;
	/**
		Sets the Collision Category that this Arcade Physics Body
		will use in order to determine what it can collide with.
		
		It can only have one single category assigned to it.
		
		If you wish to reset the collision category and mask, call
		the `resetCollisionCategory` method.
	**/
	function setCollisionCategory(category:Float):StaticBody;
	/**
		Checks to see if the given Collision Category will collide with
		this Arcade Physics object or not.
	**/
	function willCollideWith(category:Float):Bool;
	/**
		Adds the given Collision Category to the list of those that this
		Arcade Physics Body will collide with.
	**/
	function addCollidesWith(category:Float):StaticBody;
	/**
		Removes the given Collision Category from the list of those that this
		Arcade Physics Body will collide with.
	**/
	function removeCollidesWith(category:Float):StaticBody;
	/**
		Sets all of the Collision Categories that this Arcade Physics Body
		will collide with. You can either pass a single category value, or
		an array of them.
		
		Calling this method will reset all of the collision categories,
		so only those passed to this method are enabled.
		
		If you wish to add a new category to the existing mask, call
		the `addCollisionCategory` method.
		
		If you wish to reset the collision category and mask, call
		the `resetCollisionCategory` method.
	**/
	function setCollidesWith(categories:ts.AnyOf2<Float, Array<Float>>):StaticBody;
	/**
		Resets the Collision Category and Mask back to the defaults,
		which is to collide with everything.
	**/
	function resetCollisionCategory():StaticBody;
	static var prototype : StaticBody;
}