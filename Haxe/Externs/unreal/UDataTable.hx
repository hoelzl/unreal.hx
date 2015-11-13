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
  
  Imported spreadsheet table.
**/
@:glueCppIncludes("Engine/DataTable.h")
@:uextern extern class UDataTable extends unreal.UObject {
  #if WITH_EDITORONLY_DATA
  
  /**
    The filename imported to create this object. Relative to this object's package, BaseDir() or absolute
  **/
  @:deprecated public var ImportPath_DEPRECATED : unreal.FString;
  public var AssetImportData : unreal.UAssetImportData;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Structure to use for each row of the table, must inherit from FTableRowBase
  **/
  public var RowStruct : unreal.UScriptStruct;
  
}
