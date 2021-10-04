#ifndef JOYSTICK_HPP
#define JOYSTICK_HPP

#include <SDL2/SDL.h>

/* xbox controller: 
 * axis 0 -> left/right  LS horizontal
 * axis 1 -> forward/backward LS vertical
 * axis 2 -> RS horizontal
 * axis 3 -> RS vertical
 * axis 4 -> up RT
 * axis 5 -> down LT
 * axis 6 -> cross horizontal
 * axis 7 -> cross vertical
 * button 0 -> A
 * button 1 -> B
 * button 3 -> X
 * button 4 -> Y
 * button 6 -> LB
 * button 7 -> RB
 * button 11 -> start
 * button 13 -> RS
 * button 14 -> LS
 */

struct joystick_data{
	int x_axis=0;
	int y_axis=0;
	int z0_axis=-32768;
	int z1_axis=-32768;
};

struct Joystick{
	
	~Joystick();
	void initialize();
	joystick_data get_data() {return data;}
	bool read_data();
	
	private:
	joystick_data data;
	
	SDL_Joystick* gGameController = NULL;
};

#endif
