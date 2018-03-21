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
  Raw Curve data for serialization
**/
@:glueCppIncludes("Public/Animation/AnimCurveTypes.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FRawCurveTracks {
  #if WITH_EDITORONLY_DATA
  
  /**
    @note : TransformCurves are used to edit additive animation in editor.
  **/
  @:uproperty public var TransformCurves : unreal.TArray<unreal.FTransformCurve>;
  
  /**
    @note : Currently VectorCurves are not evaluated or used for anything else but transient data for modifying bone track
                         Note that it doesn't have UPROPERTY tag yet. In the future, we'd like this to be serialized, but not for now
  **/
  @:uproperty public var VectorCurves : unreal.TArray<unreal.FVectorCurve>;
  #end // WITH_EDITORONLY_DATA
  
  /**
    norm proletariat - Serialized curves we can use to pre-process data for pose matching
  **/
  @:uproperty public var BakedVectorCurves : unreal.TArray<unreal.FVectorCurve>;
  
  /**
    norm proletariat - Serialized curves we can use to pre-process data for pose matching
  **/
  @:uproperty public var BakedTransformCurves : unreal.TArray<unreal.FTransformCurve>;
  @:uproperty public var FloatCurves : unreal.TArray<unreal.FFloatCurve>;
  
}