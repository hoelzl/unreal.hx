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
package unreal.umg;

/**
  Allows thousands of items to be displayed in a list.  Generates widgets dynamically for each item.
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern @:uclass extern class UListView extends unreal.umg.UTableViewBase {
  
  /**
    Called when a widget needs to be generated
  **/
  @:uproperty public var OnGenerateRowEvent : unreal.umg.FOnGenerateRowUObject;
  
  /**
    The selection method for the list
  **/
  @:uproperty public var SelectionMode : unreal.slate.ESelectionMode;
  
  /**
    The list of items to generate widgets for
  **/
  @:uproperty public var Items : unreal.TArray<unreal.UObject>;
  
  /**
    The height of each widget
  **/
  @:uproperty public var ItemHeight : unreal.Float32;
  
}
