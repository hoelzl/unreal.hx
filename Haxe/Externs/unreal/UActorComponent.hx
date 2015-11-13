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
  ActorComponent is the base class for components that define reusable behavior that can be added to different types of Actors.
  ActorComponents that have a transform are known as SceneComponents and those that can be rendered are PrimitiveComponents.
  
  @see [ActorComponent](https://docs.unrealengine.com/latest/INT/Programming/UnrealArchitecture/Actors/Components/index.html#actorcomponents)
  @see USceneComponent
  @see UPrimitiveComponent
**/
@:glueCppIncludes("Components/ActorComponent.h")
@:uextern extern class UActorComponent extends unreal.UObject implements unreal.IInterface_AssetUserData {
  public var CreationMethod : unreal.EComponentCreationMethod;
  
  /**
    If true, we call the virtual BeginPlay
  **/
  public var bWantsBeginPlay : Bool;
  public var bEditableWhenInherited : Bool;
  
  /**
    Whether the component is currently active.
  **/
  public var bIsActive : Bool;
  
  /**
    Whether to the component is activated at creation or must be explicitly activated.
  **/
  public var bAutoActivate : Bool;
  
  /**
    True if this component was created as an instance component
  **/
  @:deprecated public var bInstanceComponent_DEPRECATED : Bool;
  
  /**
    True if this component was created by a construction script, and will be destroyed by DestroyConstructedComponents
  **/
  @:deprecated public var bCreatedByConstructionScript_DEPRECATED : Bool;
  
  /**
    Array of user data stored with the component
  **/
  private var AssetUserData : unreal.TArray<unreal.UAssetUserData>;
  
  /**
    Array of tags that can be used for grouping and categorizing. Can also be accessed from scripting.
  **/
  public var ComponentTags : unreal.TArray<unreal.FName>;
  
  /**
    Main tick function for the Actor
  **/
  public var PrimaryComponentTick : unreal.FActorComponentTickFunction;
  
  /**
    Returns whether the component is in the process of being destroyed.
  **/
  @:thisConst @:final public function IsBeingDestroyed() : Bool;
  @:final public function OnRep_IsActive() : Void;
  
  /**
    Follow the Outer chain to get the  AActor  that 'Owns' this component
  **/
  @:thisConst @:final public function GetOwner() : unreal.AActor;
  
  /**
    See if this component contains the supplied tag
  **/
  @:thisConst @:final public function ComponentHasTag(Tag : unreal.FName) : Bool;
  
  /**
    Activates the SceneComponent
    @param bReset - The value to assign to HiddenGame.
  **/
  public function Activate(bReset : Bool) : Void;
  
  /**
    Deactivates the SceneComponent.
  **/
  public function Deactivate() : Void;
  
  /**
    Sets whether the component is active or not
    @param bNewActive - The new active state of the component
  **/
  public function SetActive(bNewActive : Bool, bReset : Bool) : Void;
  
  /**
    Toggles the active state of the component
  **/
  public function ToggleActive() : Void;
  
  /**
    Returns whether the component is active or not
    @return - The active state of the component.
  **/
  @:thisConst public function IsActive() : Bool;
  
  /**
    Sets whether this component can tick when paused.
  **/
  @:final public function SetTickableWhenPaused(bTickableWhenPaused : Bool) : Void;
  
  /**
    Enable or disable replication. This is the equivelent of RemoteRole for actors (only a bool is required for components)
  **/
  @:final public function SetIsReplicated(ShouldReplicate : Bool) : Void;
  
  /**
    Blueprint implementable event for when the component is beginning play, called before its Owner's BeginPlay on Actor BeginPlay
    or when the component is dynamically created if the Actor has already BegunPlay.
  **/
  public function ReceiveBeginPlay() : Void;
  
  /**
    Blueprint implementable event for when the component ends play, generally via destruction or its Actor's EndPlay.
  **/
  public function ReceiveEndPlay(EndPlayReason : unreal.EEndPlayReason) : Void;
  
  /**
    Set this component's tick functions to be enabled or disabled. Only has an effect if the function is registered
    
    @param       bEnabled - Rather it should be enabled or not
  **/
  public function SetComponentTickEnabled(bEnabled : Bool) : Void;
  
  /**
    Returns whether this component has tick enabled or not
  **/
  @:thisConst @:final public function IsComponentTickEnabled() : Bool;
  
  /**
    Unregister and mark for pending kill a component.  This may not be used to destroy a component is owned by an actor other than the one calling the function.
  **/
  @:final public function K2_DestroyComponent(Object : unreal.UObject) : Void;
  
  /**
    Changes the ticking group for this component
  **/
  @:final public function SetTickGroup(NewTickGroup : unreal.ETickingGroup) : Void;
  
  /**
    Make this component tick after PrerequisiteActor
  **/
  public function AddTickPrerequisiteActor(PrerequisiteActor : unreal.AActor) : Void;
  
  /**
    Make this component tick after PrerequisiteComponent.
  **/
  public function AddTickPrerequisiteComponent(PrerequisiteComponent : unreal.UActorComponent) : Void;
  
  /**
    Remove tick dependency on PrerequisiteActor.
  **/
  public function RemoveTickPrerequisiteActor(PrerequisiteActor : unreal.AActor) : Void;
  
  /**
    Remove tick dependency on PrerequisiteComponent.
  **/
  public function RemoveTickPrerequisiteComponent(PrerequisiteComponent : unreal.UActorComponent) : Void;
  
  /**
    Event called every frame
  **/
  public function ReceiveTick(DeltaSeconds : unreal.Float32) : Void;
  // Interface_AssetUserData interface implementation
  
}
