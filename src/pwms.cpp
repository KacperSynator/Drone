#include "drone/pwms.hpp"
#include <stdio.h>

void* generate_pwm(void* arg)
{
		while(true)
	{
		digitalWrite( ((pwm_data *)arg)->GPIO_pin,HIGH);
		delayMicroseconds(1000 + ((pwm_data *)arg)->throttle*10);
		digitalWrite(((pwm_data *)arg)->GPIO_pin,LOW);
		delayMicroseconds(PWM_T_us - 1000 - ((pwm_data *)arg)->throttle*10);
	}
}

void Pwms::initialize()
{
	
	for(int i=0;i<N;i++)
	{
		pinMode(eng_pins[i], OUTPUT);
		pwms[i]=new pwm_data{eng_pins[i],0};
		pthread_create(&pth[i],NULL,&generate_pwm, pwms[i]);		
	}
	
}
