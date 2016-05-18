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
package unreal.moviescenetracks;


/**
  Implements a section in sub-sequence tracks.
**/
@:umodule("MovieSceneTracks")
@:glueCppIncludes("Sections/MovieSceneSubSection.h")
@:uextern extern class UMovieSceneSubSection extends unreal.moviescene.UMovieSceneSection {
  
  /**
    Playback time scaling factor.
  **/
  public var TimeScale : unreal.Float32;
  
  /**
    Number of seconds to skip at the beginning of the sub-sequence.
  **/
  public var StartOffset : unreal.Float32;
  
}