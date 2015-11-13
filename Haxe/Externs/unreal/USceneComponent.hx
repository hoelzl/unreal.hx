/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal;


/**
  A SceneComponent has a transform and supports attachment, but has no rendering or collision capabilities.
  Useful as a 'dummy' component in the hierarchy to offset others.
  @see [Scene Components](https://docs.unrealengine.com/latest/INT/Programming/UnrealArchitecture/Actors/Components/index.html#scenecomponents)
**/
@:glueCppIncludes("Components/SceneComponent.h")
@:uextern extern class USceneComponent extends unreal.UActorComponent {
  #if WITH_EDITORONLY_DATA
  public var bVisualizeComponent : Bool;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Velocity of the component.
    @see GetComponentVelocity()
  **/
  public var ComponentVelocity : unreal.FVector;
  
  /**
    If detail mode is >= system detail mode, primitive won't be rendered.
  **/
  public var DetailMode : unreal.EDetailMode;
  
  /**
    How often this component is allowed to move, used to make various optimizations. Only safe to set in constructor, use SetMobility() during runtime.
  **/
  public var Mobility : unreal.EComponentMobility;
  @:deprecated public var RelativeTranslation_DEPRECATED : unreal.FVector;
  
  /**
    Non-uniform scaling of the component relative to its parent.
    Note that scaling is always applied in local space (no shearing etc)
  **/
  public var RelativeScale3D : unreal.FVector;
  
  /**
    Rotation of the component relative to its parent
  **/
  public var RelativeRotation : unreal.FRotator;
  
  /**
    Location of the component relative to its parent
  **/
  public var RelativeLocation : unreal.FVector;
  
  /**
    If true, this component uses its parents bounds when attached.
    This can be a significant optimization with many components attached together.
  **/
  public var bUseAttachParentBound : Bool;
  
  /**
    If true, a change in the bounds of the component will call trigger a streaming data rebuild
  **/
  public var bBoundsChangeTriggersStreamingDataRebuild : Bool;
  
  /**
    Whether or not the cached PhysicsVolume this component overlaps should be updated when the component is moved.
    @see GetPhysicsVolume()
  **/
  public var bShouldUpdatePhysicsVolume : Bool;
  
  /**
    Whether to hide the primitive in game, if the primitive is Visible.
  **/
  public var bHiddenInGame : Bool;
  
  /**
    Whether to completely draw the primitive; if false, the primitive is not drawn, does not cast a shadow.
  **/
  public var bVisible : Bool;
  
  /**
    If RelativeScale3D should be considered relative to the world, rather than the parent
  **/
  public var bAbsoluteScale : Bool;
  
  /**
    If RelativeRotation should be considered relative to the world, rather than the parent
  **/
  public var bAbsoluteRotation : Bool;
  
  /**
    If RelativeLocation should be considered relative to the world, rather than the parent
  **/
  public var bAbsoluteLocation : Bool;
  
  /**
    if true, will call GetCustomLocation instead or returning the location part of ComponentToWorld
  **/
  public var bRequiresCustomLocation : Bool;
  
  /**
    Optional socket name on AttachParent that we are attached to.
  **/
  public var AttachSocketName : unreal.FName;
  
  /**
    List of child SceneComponents that are attached to us.
  **/
  public var AttachChildren : unreal.TArray<unreal.USceneComponent>;
  
  /**
    What we are currently attached to. If valid, RelativeLocation etc. are used relative to this object
  **/
  public var AttachParent : unreal.USceneComponent;
  
  /**
    Set the location of the component relative to its parent
    @param NewLocation           New location of the component relative to its parent.
    @param SweepHitResult        Hit result from any impact if sweep is true.
    @param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                         Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
    @param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                         If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                         If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                         If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
  **/
  @:final public function K2_SetRelativeLocation(NewLocation : unreal.FVector, bSweep : Bool, SweepHitResult : unreal.PRef<unreal.FHitResult>, bTeleport : Bool) : Void;
  
  /**
    Set the rotation of the component relative to its parent
    @param NewRotation           New rotation of the component relative to its parent
    @param SweepHitResult        Hit result from any impact if sweep is true.
    @param bSweep                        Whether we sweep to the destination (currently not supported for rotation).
    @param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                         If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                         If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
  **/
  @:final public function K2_SetRelativeRotation(NewRotation : unreal.FRotator, bSweep : Bool, SweepHitResult : unreal.PRef<unreal.FHitResult>, bTeleport : Bool) : Void;
  
  /**
    Set the transform of the component relative to its parent
    @param NewTransform          New transform of the component relative to its parent.
    @param SweepHitResult        Hit result from any impact if sweep is true.
    @param bSweep                        Whether we sweep to the destination (currently not supported for rotation).
    @param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                         If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                         If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
  **/
  @:final public function K2_SetRelativeTransform(NewTransform : unreal.Const<unreal.PRef<unreal.FTransform>>, bSweep : Bool, SweepHitResult : unreal.PRef<unreal.FHitResult>, bTeleport : Bool) : Void;
  
  /**
    Returns the transform of the component relative to its parent
  **/
  @:thisConst @:final public function GetRelativeTransform() : unreal.FTransform;
  
  /**
    Reset the transform of the component relative to its parent. Sets relative location to zero, relative rotation to no rotation, and Scale to 1.
  **/
  @:final public function ResetRelativeTransform() : Void;
  
  /**
    Set the non-uniform scale of the component relative to its parent
  **/
  public function SetRelativeScale3D(NewScale3D : unreal.FVector) : Void;
  
  /**
    Adds a delta to the translation of the component relative to its parent
    @param DeltaLocation         Change in location of the component relative to its parent
    @param SweepHitResult        Hit result from any impact if sweep is true.
    @param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                         Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
    @param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                         If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                         If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                         If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
  **/
  @:final public function K2_AddRelativeLocation(DeltaLocation : unreal.FVector, bSweep : Bool, SweepHitResult : unreal.PRef<unreal.FHitResult>, bTeleport : Bool) : Void;
  
  /**
    Adds a delta the rotation of the component relative to its parent
    @param DeltaRotation         Change in rotation of the component relative to is parent.
    @param SweepHitResult        Hit result from any impact if sweep is true.
    @param bSweep                        Whether we sweep to the destination (currently not supported for rotation).
    @param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                         If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                         If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
  **/
  @:final public function K2_AddRelativeRotation(DeltaRotation : unreal.FRotator, bSweep : Bool, SweepHitResult : unreal.PRef<unreal.FHitResult>, bTeleport : Bool) : Void;
  
  /**
    Adds a delta to the location of the component in its local reference frame
    @param DeltaLocation         Change in location of the component in its local reference frame.
    @param SweepHitResult        Hit result from any impact if sweep is true.
    @param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                         Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
    @param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                         If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                         If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                         If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
  **/
  @:final public function K2_AddLocalOffset(DeltaLocation : unreal.FVector, bSweep : Bool, SweepHitResult : unreal.PRef<unreal.FHitResult>, bTeleport : Bool) : Void;
  
  /**
    Adds a delta to the rotation of the component in its local reference frame
    @param DeltaRotation         Change in rotation of the component in its local reference frame.
    @param SweepHitResult        Hit result from any impact if sweep is true.
    @param bSweep                        Whether we sweep to the destination (currently not supported for rotation).
    @param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                         If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                         If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
  **/
  @:final public function K2_AddLocalRotation(DeltaRotation : unreal.FRotator, bSweep : Bool, SweepHitResult : unreal.PRef<unreal.FHitResult>, bTeleport : Bool) : Void;
  
  /**
    Adds a delta to the transform of the component in its local reference frame. Scale is unchanged.
    @param DeltaTransform        Change in transform of the component in its local reference frame. Scale is unchanged.
    @param SweepHitResult        Hit result from any impact if sweep is true.
    @param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                         Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
    @param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                         If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                         If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                         If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
  **/
  @:final public function K2_AddLocalTransform(DeltaTransform : unreal.Const<unreal.PRef<unreal.FTransform>>, bSweep : Bool, SweepHitResult : unreal.PRef<unreal.FHitResult>, bTeleport : Bool) : Void;
  
  /**
    Put this component at the specified location in world space. Updates relative location to achieve the final world location.
    @param NewLocation           New location in world space for the component.
    @param SweepHitResult        Hit result from any impact if sweep is true.
    @param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                         Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
    @param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                         If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                         If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                         If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
  **/
  @:final public function K2_SetWorldLocation(NewLocation : unreal.FVector, bSweep : Bool, SweepHitResult : unreal.PRef<unreal.FHitResult>, bTeleport : Bool) : Void;
  
  /**
    * Put this component at the specified rotation in world space. Updates relative rotation to achieve the final world rotation.
    * @param NewRotation           New rotation in world space for the component.
    * @param SweepHitResult        Hit result from any impact if sweep is true.
    * @param bSweep                        Whether we sweep to the destination (currently not supported for rotation).
    * @param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
    *                                                      If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
    *                                                      If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
    *                                                      If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
  **/
  @:final public function K2_SetWorldRotation(NewRotation : unreal.FRotator, bSweep : Bool, SweepHitResult : unreal.PRef<unreal.FHitResult>, bTeleport : Bool) : Void;
  
  /**
    Set the relative scale of the component to put it at the supplied scale in world space.
    @param NewScale              New scale in world space for this component.
  **/
  @:final public function SetWorldScale3D(NewScale : unreal.FVector) : Void;
  
  /**
    Set the transform of the component in world space.
    @param NewTransform          New transform in world space for the component.
    @param SweepHitResult        Hit result from any impact if sweep is true.
    @param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                         Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
    @param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                         If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                         If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                         If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
  **/
  @:final public function K2_SetWorldTransform(NewTransform : unreal.Const<unreal.PRef<unreal.FTransform>>, bSweep : Bool, SweepHitResult : unreal.PRef<unreal.FHitResult>, bTeleport : Bool) : Void;
  
  /**
    Adds a delta to the location of the component in world space.
    @param DeltaLocation         Change in location in world space for the component.
    @param SweepHitResult        Hit result from any impact if sweep is true.
    @param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                         Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
    @param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                         If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                         If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                         If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
  **/
  @:final public function K2_AddWorldOffset(DeltaLocation : unreal.FVector, bSweep : Bool, SweepHitResult : unreal.PRef<unreal.FHitResult>, bTeleport : Bool) : Void;
  
  /**
    Adds a delta to the rotation of the component in world space.
    @param DeltaRotation         Change in rotation in world space for the component.
    @param SweepHitResult        Hit result from any impact if sweep is true.
    @param bSweep                        Whether we sweep to the destination (currently not supported for rotation).
    @param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                         If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                         If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                         If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
  **/
  @:final public function K2_AddWorldRotation(DeltaRotation : unreal.FRotator, bSweep : Bool, SweepHitResult : unreal.PRef<unreal.FHitResult>, bTeleport : Bool) : Void;
  
  /**
    Adds a delta to the transform of the component in world space. Scale is unchanged.
    @param DeltaTransform        Change in transform in world space for the component. Scale is unchanged.
    @param SweepHitResult        Hit result from any impact if sweep is true.
    @param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                         Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
    @param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                         If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                         If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                         If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
  **/
  @:final public function K2_AddWorldTransform(DeltaTransform : unreal.Const<unreal.PRef<unreal.FTransform>>, bSweep : Bool, SweepHitResult : unreal.PRef<unreal.FHitResult>, bTeleport : Bool) : Void;
  
  /**
    Return location of the component, in world space
  **/
  @:thisConst @:final public function K2_GetComponentLocation() : unreal.FVector;
  
  /**
    Returns rotation of the component, in world space.
  **/
  @:thisConst @:final public function K2_GetComponentRotation() : unreal.FRotator;
  
  /**
    Returns scale of the component, in world space.
  **/
  @:thisConst @:final public function K2_GetComponentScale() : unreal.FVector;
  
  /**
    Get the current component-to-world transform for this component
  **/
  @:thisConst @:final public function K2_GetComponentToWorld() : unreal.FTransform;
  
  /**
    Get the forward (X) unit direction vector from this component, in world space.
  **/
  @:thisConst @:final public function GetForwardVector() : unreal.FVector;
  
  /**
    Get the up (Z) unit direction vector from this component, in world space.
  **/
  @:thisConst @:final public function GetUpVector() : unreal.FVector;
  
  /**
    Get the right (Y) unit direction vector from this component, in world space.
  **/
  @:thisConst @:final public function GetRightVector() : unreal.FVector;
  
  /**
    Returns whether the specified body is currently using physics simulation
  **/
  @:thisConst public function IsSimulatingPhysics(BoneName : unreal.FName) : Bool;
  
  /**
    Returns whether the specified body is currently using physics simulation
  **/
  @:thisConst public function IsAnySimulatingPhysics() : Bool;
  
  /**
    Get a pointer to the USceneComponent we are attached to
  **/
  @:thisConst @:final public function GetAttachParent() : unreal.USceneComponent;
  
  /**
    Gets all parent components up to and including the root component
  **/
  @:thisConst @:final public function GetParentComponents(Parents : unreal.PRef<unreal.TArray<unreal.USceneComponent>>) : Void;
  
  /**
    Gets the number of attached children components
  **/
  @:thisConst @:final public function GetNumChildrenComponents() : unreal.Int32;
  
  /**
    Gets the attached child component at the specified location
  **/
  @:thisConst @:final public function GetChildComponent(ChildIndex : unreal.Int32) : unreal.USceneComponent;
  
  /**
    Gets all the attached child components
    @param bIncludeAllDescendants Whether to include all descendants in the list of children (i.e. grandchildren, great grandchildren, etc.)
    @param Children The list of attached child components
  **/
  @:thisConst @:final public function GetChildrenComponents(bIncludeAllDescendants : Bool, Children : unreal.PRef<unreal.TArray<unreal.USceneComponent>>) : Void;
  
  /**
    Attach this component to another scene component, optionally at a named socket. It is valid to call this on components whether or not they have been Registered.
    @param bMaintainWorldTransform      If true, update the relative location/rotation of the component to keep its world position the same
  **/
  @:final public function K2_AttachTo(InParent : unreal.USceneComponent, InSocketName : unreal.FName, AttachType : unreal.EAttachLocation, bWeldSimulatedBodies : Bool) : Void;
  
  /**
    Zeroes out the relative transform of the component, and calls AttachTo(). Useful for attaching directly to a scene component or socket location
  **/
  @:final public function SnapTo(InParent : unreal.USceneComponent, InSocketName : unreal.FName) : Void;
  
  /**
    Detach this component from whatever it is attached to. Automatically unwelds components that are welded together (See WeldTo)
    @param bMaintainWorldTransform     If true, update the relative location/rotation of the component to keep its world position the same *
  **/
  public function DetachFromParent(bMaintainWorldPosition : Bool, bCallModify : Bool) : Void;
  
  /**
    Gets the names of all the sockets on the component.
    @return Get the names of all the sockets on the component.
  **/
  @:thisConst @:final public function GetAllSocketNames() : unreal.TArray<unreal.FName>;
  
  /**
    Get world-space socket transform.
    @param InSocketName Name of the socket or the bone to get the transform
    @return Socket transform in world space if socket if found. Otherwise it will return component's transform in world space.
  **/
  @:thisConst public function GetSocketTransform(InSocketName : unreal.FName, TransformSpace : unreal.ERelativeTransformSpace) : unreal.FTransform;
  
  /**
    Get world-space socket or bone location.
    @param InSocketName Name of the socket or the bone to get the transform
    @return Socket transform in world space if socket if found. Otherwise it will return component's transform in world space.
  **/
  @:thisConst public function GetSocketLocation(InSocketName : unreal.FName) : unreal.FVector;
  
  /**
    Get world-space socket or bone  FRotator rotation.
    @param InSocketName Name of the socket or the bone to get the transform
    @return Socket transform in world space if socket if found. Otherwise it will return component's transform in world space.
  **/
  @:thisConst public function GetSocketRotation(InSocketName : unreal.FName) : unreal.FRotator;
  
  /**
    Get world-space socket or bone FQuat rotation.
    @param InSocketName Name of the socket or the bone to get the transform
    @return Socket transform in world space if socket if found. Otherwise it will return component's transform in world space.
  **/
  @:thisConst public function GetSocketQuaternion(InSocketName : unreal.FName) : unreal.FQuat;
  
  /**
    return true if socket with the given name exists
    @param InSocketName Name of the socket or the bone to get the transform
    @return true if the socket with the given name exists. Otherwise, return false
  **/
  @:thisConst public function DoesSocketExist(InSocketName : unreal.FName) : Bool;
  
  /**
    Get velocity of the component: either ComponentVelocity, or the velocity of the physics body if simulating physics.
    @return Velocity of the component
  **/
  @:thisConst public function GetComponentVelocity() : unreal.FVector;
  
  /**
    Is this component visible or not in game
    @return true if visible
  **/
  @:thisConst public function IsVisible() : Bool;
  
  /**
    Set visibility of the component, if during game use this to turn on/off
  **/
  public function SetVisibility(bNewVisibility : Bool, bPropagateToChildren : Bool) : Void;
  
  /**
    Toggle visibility of the component
  **/
  @:final public function ToggleVisibility(bPropagateToChildren : Bool) : Void;
  
  /**
    Changes the value of HiddenGame.
    @param NewHidden     - The value to assign to HiddenGame.
  **/
  public function SetHiddenInGame(NewHidden : Bool, bPropagateToChildren : Bool) : Void;
  
  /**
    Get the PhysicsVolume overlapping this component.
  **/
  @:thisConst @:final public function GetPhysicsVolume() : unreal.APhysicsVolume;
  
  /**
    Set the location and rotation of the component relative to its parent
    @param NewLocation           New location of the component relative to its parent.
    @param NewRotation           New rotation of the component relative to its parent.
    @param SweepHitResult        Hit result from any impact if sweep is true.
    @param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                         Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
    @param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                         If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                         If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                         If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
  **/
  @:final public function K2_SetRelativeLocationAndRotation(NewLocation : unreal.FVector, NewRotation : unreal.FRotator, bSweep : Bool, SweepHitResult : unreal.PRef<unreal.FHitResult>, bTeleport : Bool) : Void;
  
  /**
    Set which parts of the relative transform should be relative to parent, and which should be relative to world
  **/
  @:final public function SetAbsolute(bNewAbsoluteLocation : Bool, bNewAbsoluteRotation : Bool, bNewAbsoluteScale : Bool) : Void;
  
  /**
    Set the relative location and rotation of the component to put it at the supplied pose in world space.
    @param NewLocation           New location in world space for the component.
    @param NewRotation           New rotation in world space for the component.
    @param SweepHitResult        Hit result from any impact if sweep is true.
    @param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                         Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
    @param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                         If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                         If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                         If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
  **/
  @:final public function K2_SetWorldLocationAndRotation(NewLocation : unreal.FVector, NewRotation : unreal.FRotator, bSweep : Bool, SweepHitResult : unreal.PRef<unreal.FHitResult>, bTeleport : Bool) : Void;
  
}
