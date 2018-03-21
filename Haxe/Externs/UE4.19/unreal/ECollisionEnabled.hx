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
  Enum used to describe what type of collision is enabled on a body.
**/
@:glueCppIncludes("Classes/Engine/EngineTypes.h")
@:uname("ECollisionEnabled.Type")
@:uextern @:uenum extern enum ECollisionEnabled {
  
  /**
    Will not create any representation in the physics engine. Cannot be used for spatial queries (raycasts, sweeps, overlaps) or simulation (rigid body, constraints). Best performance possible (especially for moving objects)
    @DisplayName No Collision
  **/
  @DisplayName("No Collision")
  NoCollision;
  
  /**
    Only used for spatial queries (raycasts, sweeps, and overlaps). Cannot be used for simulation (rigid body, constraints). Useful for character movement and things that do not need physical simulation. Performance gains by keeping data out of simulation tree.
    @DisplayName Query Only (No Physics Collision)
  **/
  @DisplayName("Query Only (No Physics Collision)")
  QueryOnly;
  
  /**
    Only used only for physics simulation (rigid body, constraints). Cannot be used for spatial queries (raycasts, sweeps, overlaps). Useful for jiggly bits on characters that do not need per bone detection. Performance gains by keeping data out of query tree
    @DisplayName Physics Only (No Query Collision)
  **/
  @DisplayName("Physics Only (No Query Collision)")
  PhysicsOnly;
  
}