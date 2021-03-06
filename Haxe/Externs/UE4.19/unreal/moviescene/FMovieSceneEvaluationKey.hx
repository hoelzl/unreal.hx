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
package unreal.moviescene;

/**
  Keyable struct that represents a particular entity within an evaluation template (either a section/template or a track)
**/
@:umodule("MovieScene")
@:glueCppIncludes("Public/Evaluation/MovieSceneEvaluationKey.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FMovieSceneEvaluationKey {
  
  /**
    Index of the section template within the track this key relates to (or -1 where this key relates to a track)
  **/
  @:uproperty public var SectionIndex : unreal.FakeUInt32;
  
  /**
    ID of the track this key relates to
  **/
  @:uproperty public var TrackIdentifier : unreal.moviescene.FMovieSceneTrackIdentifier;
  
  /**
    ID of the sequence that the entity is contained within
  **/
  @:uproperty public var SequenceID : unreal.moviescene.FMovieSceneSequenceID;
  
}
