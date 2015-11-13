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
package unreal.editor;

@:umodule("UnrealEd")
@:glueCppIncludes("Editor/UnrealEdEngine.h")
@:uextern extern class UUnrealEdEngine extends unreal.editor.UEditorEngine {
  
  /**
    Cooker server incase we want to cook ont he side while editing...
  **/
  public var CookServer : unreal.editor.UCookOnTheFlyServer;
  
  /**
    List of info for all known template maps
  **/
  public var TemplateMapInfos : unreal.TArray<unreal.editor.FTemplateMapInfo>;
  
  /**
    Array of sorted, localized editor sprite categories
  **/
  @:deprecated public var SortedSpriteCategories_DEPRECATED : unreal.TArray<unreal.FString>;
  
  /**
    Whether the user needs to be prompted about a package being saved when the user does not have permission to write the file
  **/
  public var bNeedWarningForWritePermission : Bool;
  
  /**
    Whether the user needs to be prompted about a package being saved with an engine version newer than the current one or not
  **/
  public var bNeedWarningForPkgEngineVer : Bool;
  
  /**
    If we have packages that are pending and we should notify the user that they need to be checked out
  **/
  public var bNeedToPromptForCheckout : Bool;
  
  /**
    Current target for LOD parenting operations (actors will use this as the replacement)
  **/
  public var CurrentLODParentActor : unreal.AActor;
  
  /**
    Array of packages to be fully loaded at Editor startup.
  **/
  public var PackagesToBeFullyLoadedAtStartup : unreal.TArray<unreal.FString>;
  
  /**
    Global list of instanced animation compression algorithms.
  **/
  public var AnimationCompressionAlgorithms : unreal.TArray<unreal.UAnimCompress>;
  
  /**
    A buffer for implementing sound cue nodes copy/paste.
  **/
  public var SoundCueCopyPasteBuffer : unreal.USoundCue;
  
  /**
    A buffer for implementing matinee track/group copy/paste.
  **/
  public var MatineeCopyPasteBuffer : unreal.TArray<unreal.UObject>;
  
  /**
    A buffer for implementing material expression copy/paste.
  **/
  public var MaterialCopyPasteBuffer : unreal.UMaterial;
  
  /**
    Manager responsible for configuring auto reimport
  **/
  public var AutoReimportManager : unreal.editor.UAutoReimportManager;
  
  /**
    Global instance of the editor options class.
  **/
  public var EditorOptionsInst : unreal.editor.UUnrealEdOptions;
  
}
