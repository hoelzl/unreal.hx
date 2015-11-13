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
  Project wide settings for input handling
  
  @see https://docs.unrealengine.com/latest/INT/Gameplay/Input/index.html
**/
@:glueCppIncludes("GameFramework/InputSettings.h")
@:uextern extern class UInputSettings extends unreal.UObject {
  
  /**
    The keys which open the console.
  **/
  public var ConsoleKeys : unreal.TArray<unreal.inputcore.FKey>;
  
  /**
    The key which opens the console.
  **/
  @:deprecated public var ConsoleKey_DEPRECATED : unreal.inputcore.FKey;
  
  /**
    The default on-screen touch input interface for the game (can be null to disable the onscreen interface)
  **/
  public var DefaultTouchInterface : unreal.FStringAssetReference;
  
  /**
    Whether or not to show the console on 4 finger tap, on mobile platforms
  **/
  public var bShowConsoleOnFourFingerTap : Bool;
  
  /**
    Should the touch input interface be shown always, or only when the platform has a touch screen?
  **/
  public var bAlwaysShowTouchInterface : Bool;
  
  /**
    List of Axis Mappings
  **/
  public var AxisMappings : unreal.TArray<unreal.FInputAxisKeyMapping>;
  
  /**
    List of Action Mappings
  **/
  public var ActionMappings : unreal.TArray<unreal.FInputActionKeyMapping>;
  
  /**
    If a key is pressed twice in this amount of time it is considered a "double click"
  **/
  public var DoubleClickTime : unreal.Float32;
  
  /**
    The scaling value to multiply the field of view by
  **/
  public var FOVScale : unreal.Float32;
  
  /**
    Scale the mouse based on the player camera manager's field of view
  **/
  public var bEnableFOVScaling : Bool;
  
  /**
    Mouse smoothing control
  **/
  public var bEnableMouseSmoothing : Bool;
  
  /**
    Allow mouse to be used for touch
  **/
  public var bUseMouseForTouch : Bool;
  public var bAltEnterTogglesFullscreen : Bool;
  
  /**
    List of Axis Properties
  **/
  public var AxisConfig : unreal.TArray<unreal.FInputAxisConfigEntry>;
  
}
