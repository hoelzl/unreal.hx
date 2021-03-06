/**
 * 
 * WARNING! This file was autogenerated by: 
 *  _   _ _   _ __   __ 
 * | | | | | | |\ \ / / 
 * | | | | |_| | \ V /  
 * | | | |  _  | /   \  
 * | |_| | | | |/ /^\ \ 
 *  \___/\_| |_/\/   \/ 
 * 
 * This file was autogenerated by UnrealHxGenerator using UHT definitions.
 * It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
 * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal;

/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  PostProcessComponent. Enables Post process controls for blueprints.
     Will use a parent UShapeComponent to provide volume data if available.
**/
@:glueCppIncludes("Components/PostProcessComponent.h")
@:uextern @:uclass extern class UPostProcessComponent extends unreal.USceneComponent implements unreal.IInterface_PostProcessVolume {
  
  /**
    set this to false to use the parent shape component as volume bounds. True affects the whole world regardless.
  **/
  @:uproperty public var bUnbound : Bool;
  
  /**
    Whether this volume is enabled or not.
  **/
  @:uproperty public var bEnabled : Bool;
  
  /**
    0:no effect, 1:full effect
  **/
  @:uproperty public var BlendWeight : unreal.Float32;
  
  /**
    World space radius around the volume that is used for blending (only if not unbound).
  **/
  @:uproperty public var BlendRadius : unreal.Float32;
  
  /**
    Priority of this volume. In the case of overlapping volumes the one with the highest priority
    overrides the lower priority ones. The order is undefined if two or more overlapping volumes have the same priority.
  **/
  @:uproperty public var Priority : unreal.Float32;
  
  /**
    Post process settings to use for this volume.
  **/
  @:uproperty public var Settings : unreal.FPostProcessSettings;
  // Interface_PostProcessVolume interface implementation
  
}
