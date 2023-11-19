all: main.cpp ./src/global.cpp ./src/hospital.cpp ./src/address.cpp ./src/person.cpp ./src/doctor.cpp ./src/patient.cpp ./src/appointment.cpp ./src/nurse.cpp ./src/driver.cpp ./src/ambulance.cpp
	g++ main.cpp -o "./build/hsos" ./src/global.cpp ./src/hospital.cpp ./src/address.cpp ./src/person.cpp ./src/doctor.cpp ./src/patient.cpp ./src/appointment.cpp ./src/nurse.cpp ./src/driver.cpp ./src/ambulance.cpp

run: ./build/hsos
	./build/hsos

clean:
	rm -f ./build/hsos
	rm -f ./include/*.gch

headers: ./include/address.h ./include/ambulance.h ./include/appointment.h ./include/doctor.h ./include/driver.h ./include/global.h ./include/hospital.h ./include/nurse.h ./include/patient.h ./include/person.h
	g++ ./include/address.h ./include/ambulance.h ./include/appointment.h ./include/doctor.h ./include/driver.h ./include/global.h ./include/hospital.h ./include/nurse.h ./include/patient.h ./include/person.h