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
package unreal.gameplayabilities;


/**
  Repeat a task a certain number of times at a given interval.
**/
@:umodule("GameplayAbilities")
@:glueCppIncludes("Abilities/Tasks/AbilityTask_Repeat.h")
@:uextern @:uclass extern class UAbilityTask_Repeat extends unreal.gameplayabilities.UAbilityTask {
  
  /**
    Start a task that repeats an action or set of actions.
  **/
  @:ufunction static public function RepeatAction(WorldContextObject : unreal.UObject, TimeBetweenActions : unreal.Float32, TotalActionCount : unreal.Int32) : unreal.gameplayabilities.UAbilityTask_Repeat;
  
}