/// @description Resets Savedata for the game
/// @author: Juan Pablo Martinez

image_speed = 0;

ini_open("savedata.ini");
ini_section_delete("levels");
ini_close();