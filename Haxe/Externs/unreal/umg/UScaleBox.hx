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
  Allows you to place content with a desired size and have it scale to meet the constraints placed on this box's alloted area.  If
  you needed to have a background image scale to fill an area but not become distorted with different aspect ratios, or if you need
  to auto fit some text to an area, this is the control for you.
  
  ● Single Child
  ● Aspect Ratio
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern extern class UScaleBox extends unreal.umg.UContentWidget {
  
  /**
    Optional scale that can be specified by the User. Isn't used if Stretch != EStretch::UserSpecified
  **/
  public var UserSpecifiedScale : unreal.Float32;
  
  /**
    The stretching rule to apply when content is stretched
  **/
  public var Stretch : unreal.slate.EStretch;
  
  /**
    Controls in what direction content can be scaled
  **/
  public var StretchDirection : unreal.slate.EStretchDirection;
  
}
