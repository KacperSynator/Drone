#include <wiringPi.h>
#include <iostream>

#include "drone/pwms.hpp"
#include "drone/gyro.hpp"


int main()
{
	
	wiringPiSetupGpio(); 	     	           
	
	Pwms pwms; Gyro gyro;
	pwms.initialize(); gyro.initialize();
	
	while(true)
	{
		int throttle;

		std::cout<< "reading:" << "\n";
		std::cin >> throttle;
		pwms.set_all_pwms_throttle(throttle);
	}
	return 0;
}
