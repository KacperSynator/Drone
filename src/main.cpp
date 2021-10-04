#include <wiringPi.h>
#include <iostream>

#include "drone/pwms.hpp"
#include "drone/gyro.hpp"
#include "drone/joystick.hpp"


int main()
{
	
	wiringPiSetupGpio(); 	     	           
	
	Pwms pwms; Gyro gyro; Joystick joystick;
	pwms.initialize(); gyro.initialize(); joystick.initialize();
	

	
	while(true)
	{
		int throttle;
		
		if(joystick.read_data())
			printf("x_axis: %d y_axis: %d z0_axis %d z1_axis %d\n",joystick.get_data().x_axis,joystick.get_data().y_axis,joystick.get_data().z0_axis,joystick.get_data().z1_axis);
		//std::cout<< "reading:" << "\n";
		//std::cin >> throttle;
		//pwms.set_all_pwms_throttle(throttle);
		
	}
	return 0;
}
