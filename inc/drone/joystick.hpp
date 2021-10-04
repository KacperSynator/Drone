#ifndef JOYSTICK_HPP
#define JOYSTICK_HPP

#include <SDL2/SDL.h>

struct joystick_data{
	int x_axis;
	int y_axis;
	int z0_axis;
	int z1_axis;
};

struct Joystick{
	
	~Joystick();
	void initialize();
	

	
	private:
	SDL_Joystick* gGameController = NULL;
};

#endif
