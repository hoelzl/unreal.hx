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
  Cascade-related
**/
@:glueCppIncludes("Particles/ParticleEmitter.h")
@:uname("EEmitterRenderMode")
@:uextern @:uenum extern enum EEmitterRenderMode {
  
  /**
    Normal
  **/
  @DisplayName("Normal")
  ERM_Normal;
  
  /**
    Point
  **/
  @DisplayName("Point")
  ERM_Point;
  
  /**
    Cross
  **/
  @DisplayName("Cross")
  ERM_Cross;
  
  /**
    Lights Only
  **/
  @DisplayName("Lights Only")
  ERM_LightsOnly;
  
  /**
    None
  **/
  @DisplayName("None")
  ERM_None;
  
}