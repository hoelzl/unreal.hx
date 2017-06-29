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
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  A Component referencing a vector field.
**/
@:glueCppIncludes("Components/VectorFieldComponent.h")
@:uextern @:uclass extern class UVectorFieldComponent extends unreal.UPrimitiveComponent {
  
  /**
    If true, the vector field is only used for preview visualizations.
  **/
  @:uproperty public var bPreviewVectorField : Bool;
  
  /**
    How tightly particles follow the vector field.
  **/
  @:uproperty public var Tightness : unreal.Float32;
  
  /**
    The intensity at which the vector field is applied.
  **/
  @:uproperty public var Intensity : unreal.Float32;
  
  /**
    The vector field asset.
  **/
  @:uproperty public var VectorField : unreal.UVectorField;
  
}