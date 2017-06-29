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
  
  
**/
@:glueCppIncludes("Animation/AnimationAsset.h")
@:uextern @:uclass extern class UAnimationAsset extends unreal.UObject implements unreal.IInterface_AssetUserData {
  #if WITH_EDITORONLY_DATA
  
  /**
    The default skeletal mesh to use when previewing this asset - this only applies when you open Persona using this asset// @todo: note that this doesn't retarget right now
  **/
  @:uproperty public var PreviewPoseAsset : unreal.UPoseAsset;
  
  /**
    Information for thumbnail rendering
  **/
  @:uproperty public var ThumbnailInfo : unreal.UThumbnailInfo;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Array of user data stored with the asset
  **/
  @:uproperty private var AssetUserData : unreal.TArray<unreal.UAssetUserData>;
  #if WITH_EDITORONLY_DATA
  
  /**
    Asset mapping table when ParentAsset is set
  **/
  @:uproperty private var AssetMappingTable : unreal.UAssetMappingTable;
  
  /**
    note this is transient as they're added as they're loaded
  **/
  @:uproperty public var ChildrenAssets : unreal.TArray<unreal.UAnimationAsset>;
  
  /**
    Parent Asset, if set, you won't be able to edit any data in here but just mapping table
    
    During cooking, this data will be used to bake out to normal asset
  **/
  @:uproperty public var ParentAsset : unreal.UAnimationAsset;
  #end // WITH_EDITORONLY_DATA
  // Interface_AssetUserData interface implementation
  
}