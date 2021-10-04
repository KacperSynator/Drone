#include "drone/gyro.hpp"


void Gyro::MPU6050_Init()
{
	
	wiringPiI2CWriteReg8 (fd, SMPLRT_DIV, 0x07);	/* Write to sample rate register */
	wiringPiI2CWriteReg8 (fd, PWR_MGMT_1, 0x01);	/* Write to power management register */
	wiringPiI2CWriteReg8 (fd, CONFIG, 0);		/* Write to Configuration register */
	wiringPiI2CWriteReg8 (fd, GYRO_CONFIG, 24);	/* Write to Gyro Configuration register */
	wiringPiI2CWriteReg8 (fd, INT_ENABLE, 0x01);	/*Write to interrupt enable register */

} 
void Gyro::initialize()
{
	fd = wiringPiI2CSetup(Device_Address);   /*Initializes I2C with device Address*/	
	MPU6050_Init();  /* Initializes MPU6050 */
	
}

short Gyro::read_raw_data(int addr)
{
	short high_byte,low_byte,value;
	high_byte = wiringPiI2CReadReg8(fd, addr);
	low_byte = wiringPiI2CReadReg8(fd, addr+1);
	value = (high_byte << 8) | low_byte;
	return value;
}

gyro_data Gyro::read_data()
{	
	
	/*Read raw value of Accelerometer and gyroscope from MPU6050*/
	data.Acc_x = read_raw_data(ACCEL_XOUT_H);
	data.Acc_y = read_raw_data(ACCEL_YOUT_H);		
	data.Acc_z = read_raw_data(ACCEL_ZOUT_H);
	
	data.Gyro_x = read_raw_data(GYRO_XOUT_H);
	data.Gyro_y = read_raw_data(GYRO_YOUT_H);
	data.Gyro_z = read_raw_data(GYRO_ZOUT_H);
	
	/* Divide raw value by sensitivity scale factor */
	data.Ax = data.Acc_x/16384.0;
	data.Ay = data.Acc_y/16384.0;
	data.Az = data.Acc_z/16384.0;
		
	data.Gx = data.Gyro_x/131;
	data.Gy = data.Gyro_y/131;
	data.Gz = data.Gyro_z/131;
		
	printf("\n Gx=%.3f °/s\tGy=%.3f °/s\tGz=%.3f °/s\n Ax=%.3f g\tAy=%.3f g\tAz=%.3f g\n",data.Gx,data.Gy,data.Gz,data.Ax,data.Ay,data.Az);
	
	return data;
}	
