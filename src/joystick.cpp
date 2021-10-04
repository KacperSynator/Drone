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

bool Joystick::read_data()
{
     SDL_Event event;
     if(SDL_PollEvent(&event) != 0)
     {
	 //LS horizontal (x axis)
	 if(event.jaxis.axis==0)
	     data.x_axis=event.jaxis.value;
	     
	 //LS vertical (y axis)
	 else if(event.jaxis.axis==1)
	     data.y_axis=event.jaxis.value;
	    
	 //RT (z0 axis)
	 else if(event.jaxis.axis==4)
	    data.z0_axis=event.jaxis.value;
	    
	 //LS (z1 axis)
	 else if(event.jaxis.axis==5)
	    data.z1_axis=event.jaxis.value;
	    
	 return true;   
     }
     else 
	return false;
}
