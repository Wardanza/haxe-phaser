package matterjs;

@:native("MatterJS.BodiesFactory") extern class BodiesFactory {
	function new();
	/**
		Creates a new rigid body model with a circle hull.
		The options parameter is an object that specifies any properties you wish to override the defaults.
		See the properties section of the `Matter.Body` module for detailed information on what you can pass via the `options` object.
	**/
	function circle(x:Float, y:Float, radius:Float, ?options:IBodyDefinition, ?maxSides:Float):BodyType;
	/**
		Creates a new rigid body model with a regular polygon hull with the given number of sides.
		The options parameter is an object that specifies any properties you wish to override the defaults.
		See the properties section of the `Matter.Body` module for detailed information on what you can pass via the `options` object.
	**/
	function polygon(x:Float, y:Float, sides:Float, radius:Float, ?options:IChamferableBodyDefinition):BodyType;
	/**
		Creates a new rigid body model with a rectangle hull.
		The options parameter is an object that specifies any properties you wish to override the defaults.
		See the properties section of the `Matter.Body` module for detailed information on what you can pass via the `options` object.
	**/
	function rectangle(x:Float, y:Float, width:Float, height:Float, ?options:IChamferableBodyDefinition):BodyType;
	/**
		Creates a new rigid body model with a trapezoid hull.
		The `slope` is parameterised as a fraction of `width` and must be < 1 to form a valid trapezoid.
		The options parameter is an object that specifies any properties you wish to override the defaults.
		See the properties section of the `Matter.Body` module for detailed information on what you can pass via the `options` object.
	**/
	function trapezoid(x:Float, y:Float, width:Float, height:Float, slope:Float, ?options:IChamferableBodyDefinition):BodyType;
	/**
		Creates a body using the supplied vertices (or an array containing multiple sets of vertices).
		If the vertices are convex, they will pass through as supplied.
		Otherwise if the vertices are concave, they will be decomposed if [poly-decomp.js](https://github.com/schteppe/poly-decomp.js) is available.
		Note that this process is not guaranteed to support complex sets of vertices (e.g. those with holes may fail).
		By default the decomposition will discard collinear edges (to improve performance).
		It can also optionally discard any parts that have an area less than `minimumArea`.
		If the vertices can not be decomposed, the result will fall back to using the convex hull.
		The options parameter is an object that specifies any `Matter.Body` properties you wish to override the defaults.
		See the properties section of the `Matter.Body` module for detailed information on what you can pass via the `options` object.
	**/
	function fromVertices(x:Float, y:Float, vertexSets:Array<Array<Vector>>, ?options:IBodyDefinition, ?flagInternal:Bool, ?removeCollinear:Float, ?minimumArea:Float):BodyType;
	/**
		Takes an array of Body objects and flags all internal edges (coincident parts) based on the maxDistance
		value. The array is changed in-place and returned, so you can pass this function a `Body.parts` property.
	**/
	function flagCoincidentParts(parts:Array<BodyType>, ?maxDistance:Float):Array<BodyType>;
	static var prototype : BodiesFactory;
}