#ifndef PWMS_HPP
#define PWMS_HPP

#include <wiringPi.h>
#include <pthread.h>

#define PWM_T_us 20000
#define N 4

void* generate_pwm(void* arg);


struct pwm_data{ 
		
	int GPIO_pin;
	int throttle;  // throttle range 0-100 (%)
};

struct Pwms{

	
private:
		const int eng_pins[N] = {12,16,20,21};
		pwm_data *pwms[N];
		pthread_t pth[N];
		
		
public:
	void initialize();
	void set_all_pwms_throttle(int throttle) {for(int i=0;i<N;i++) pwms[i]->throttle=throttle;};
	void set_pwm_throttle(int throttle, int i) {pwms[i]->throttle=throttle;}
};


#endif
