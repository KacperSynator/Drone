#include "drone/joystick.hpp"


Joystick::~Joystick()
{
	//Close game controller
    SDL_JoystickClose( gGameController );
    
    //Quit SDL subsystems
    SDL_Quit();
}


void Joystick::initialize()
{
	if( SDL_Init(SDL_INIT_JOYSTICK) < 0 )
    {
        printf( "SDL could not initialize! SDL Error: %s\n", SDL_GetError() );
    }
    else
    {
		 printf( "SDL initialized\n");
	}
	
    //Check for joysticks
    if( SDL_NumJoysticks() < 1 )
    {
        printf( "Warning: No joysticks connected!\n" );
    }
    else
    {
		//Load joystick
		gGameController = SDL_JoystickOpen( 0 );
		if( gGameController == NULL)
		{
			printf( "Warning: Unable to open game controller! SDL Error: %s\n", SDL_GetError() );
		}
    }	
}
