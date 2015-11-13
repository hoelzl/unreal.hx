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
package unreal.umg;


/**
  The button is a click-able primitive widget to enable basic interaction, you
  can place any other widget inside a button to make a more complex and
  interesting click-able element in your UI.
  
  ● Single Child
  ● Clickable
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern extern class UButton extends unreal.umg.UContentWidget {
  
  /**
    Sometimes a button should only be mouse-clickable and never keyboard focusable.
  **/
  public var IsFocusable : Bool;
  
  /**
    The type of touch action required by the user to trigger the buttons 'Click'
  **/
  public var TouchMethod : unreal.slatecore.EButtonTouchMethod;
  
  /**
    The type of mouse action required by the user to trigger the buttons 'Click'
  **/
  public var ClickMethod : unreal.slatecore.EButtonClickMethod;
  
  /**
    The color multiplier for the button background
  **/
  public var BackgroundColor : unreal.FLinearColor;
  
  /**
    The color multiplier for the button content
  **/
  public var ColorAndOpacity : unreal.FLinearColor;
  
  /**
    The button style used at runtime
  **/
  public var WidgetStyle : unreal.slatecore.FButtonStyle;
  
  /**
    The template style asset, used to seed the mutable instance of the style.
  **/
  @:deprecated public var Style_DEPRECATED : unreal.slatecore.USlateWidgetStyleAsset;
  
  /**
    Sets the color multiplier for the button content
  **/
  @:final public function SetColorAndOpacity(InColorAndOpacity : unreal.FLinearColor) : Void;
  
  /**
    Sets the color multiplier for the button background
  **/
  @:final public function SetBackgroundColor(InBackgroundColor : unreal.FLinearColor) : Void;
  
  /**
    Returns true if the user is actively pressing the button.  Do not use this for detecting 'Clicks', use the OnClicked event instead.
    
    @return true if the user is actively pressing the button otherwise false.
  **/
  @:thisConst @:final public function IsPressed() : Bool;
  
}
