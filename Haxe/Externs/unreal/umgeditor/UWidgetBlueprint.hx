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
package unreal.umgeditor;


/**
  The widget blueprint enables extending UUserWidget the user extensible UWidget.
**/
@:umodule("UMGEditor")
@:glueCppIncludes("WidgetBlueprint.h")
@:uextern extern class UWidgetBlueprint extends unreal.UBlueprint {
  
  /**
    Don't directly modify this property to change the palette category.  The actual value is stored
    in the CDO of the UUserWidget, but a copy is stored here so that it's available in the serialized
    Tag data in the asset header for access in the FAssetData.
  **/
  public var PaletteCategory : unreal.FString;
  public var Animations : unreal.TArray<unreal.umg.UWidgetAnimation>;
  @:deprecated public var AnimationData_DEPRECATED : unreal.TArray<unreal.umgeditor.FWidgetAnimation_DEPRECATED>;
  public var Bindings : unreal.TArray<unreal.umgeditor.FDelegateEditorBinding>;
  
  /**
    A tree of the widget templates to be created
  **/
  public var WidgetTree : unreal.umg.UWidgetTree;
  
}
