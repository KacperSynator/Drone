#ifndef GYRO_HPP
#define GYRO_HPP

#include <wiringPiI2C.h>
#include <stdlib.h>
#include <stdio.h>

#define Device_Address 0x68	/*Device Address/Identifier for MPU6050*/

#define PWR_MGMT_1   0x6B
#define SMPLRT_DIV   0x19
#define CONFIG       0x1A
#define GYRO_CONFIG  0x1B
#define INT_ENABLE   0x38
#define ACCEL_XOUT_H 0x3B
#define ACCEL_YOUT_H 0x3D
#define ACCEL_ZOUT_H 0x3F
#define GYRO_XOUT_H  0x43
#define GYRO_YOUT_H  0x45
#define GYRO_ZOUT_H  0x47

struct gyro_data{
	float Acc_x,Acc_y,Acc_z;
	float Gyro_x,Gyro_y,Gyro_z;
	float Ax=0, Ay=0, Az=0;
	float Gx=0, Gy=0, Gz=0;
};

struct Gyro{
	
	
	void initialize();
	gyro_data read_data();
	int get_fd() {return fd;}
	
private:
	gyro_data data;
	int fd;
	short read_raw_data(int addr);
	void MPU6050_Init();

};

#endif
