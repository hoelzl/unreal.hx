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
package unreal.editor;

/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Animation/EditorAnimCurveBoneLinks.h")
@:uextern @:uclass extern class UEditorAnimCurveBoneLinks extends unreal.UObject {
  
  /**
    Max (Lowest) LOD to evaluate to curve.
    Since LOD goes from 0 to high number, we call it Max.
    For example, if you have 3 LODs (0, 1, 2), and if you want this to work until LOD 1, type 1.
    Then the curve will be evaluated until LOD1, but not for LOD 2
    Default value is 255
  **/
  @:uproperty public var MaxLOD : unreal.UInt8;
  @:uproperty public var ConnectedBones : unreal.TArray<unreal.FBoneReference>;
  @:uproperty public var CurveName : unreal.FSmartName;
  
}