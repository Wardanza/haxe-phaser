package phaser.physics.arcade.components;

/**
	Provides methods used for setting the drag properties of an Arcade Physics Body.
**/
typedef Drag = {
	/**
		Sets the body's horizontal and vertical drag. If the vertical drag value is not provided, the vertical drag is set to the same value as the horizontal drag.
		
		Drag can be considered as a form of deceleration that will return the velocity of a body back to zero over time.
		It is the absolute loss of velocity due to movement, in pixels per second squared.
		The x and y components are applied separately.
		
		When `useDamping` is true, this is 1 minus the damping factor.
		A value of 1 means the Body loses no velocity.
		A value of 0.95 means the Body loses 5% of its velocity per step.
		A value of 0.5 means the Body loses 50% of its velocity per step.
		
		Drag is applied only when `acceleration` is zero.
	**/
	function setDrag(x:Float, ?y:Float):Drag;
	/**
		Sets the body's horizontal drag.
		
		Drag can be considered as a form of deceleration that will return the velocity of a body back to zero over time.
		It is the absolute loss of velocity due to movement, in pixels per second squared.
		The x and y components are applied separately.
		
		When `useDamping` is true, this is 1 minus the damping factor.
		A value of 1 means the Body loses no velocity.
		A value of 0.95 means the Body loses 5% of its velocity per step.
		A value of 0.5 means the Body loses 50% of its velocity per step.
		
		Drag is applied only when `acceleration` is zero.
	**/
	function setDragX(value:Float):Drag;
	/**
		Sets the body's vertical drag.
		
		Drag can be considered as a form of deceleration that will return the velocity of a body back to zero over time.
		It is the absolute loss of velocity due to movement, in pixels per second squared.
		The x and y components are applied separately.
		
		When `useDamping` is true, this is 1 minus the damping factor.
		A value of 1 means the Body loses no velocity.
		A value of 0.95 means the Body loses 5% of its velocity per step.
		A value of 0.5 means the Body loses 50% of its velocity per step.
		
		Drag is applied only when `acceleration` is zero.
	**/
	function setDragY(value:Float):Drag;
	/**
		If this Body is using `drag` for deceleration this function controls how the drag is applied.
		If set to `true` drag will use a damping effect rather than a linear approach. If you are
		creating a game where the Body moves freely at any angle (i.e. like the way the ship moves in
		the game Asteroids) then you will get a far smoother and more visually correct deceleration
		by using damping, avoiding the axis-drift that is prone with linear deceleration.
		
		If you enable this property then you should use far smaller `drag` values than with linear, as
		they are used as a multiplier on the velocity. Values such as 0.95 will give a nice slow
		deceleration, where-as smaller values, such as 0.5 will stop an object almost immediately.
	**/
	function setDamping(value:Bool):Drag;
};