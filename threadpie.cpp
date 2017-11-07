#include <queue>
#include <iostream>
#include <mutex>
#include <thread>
#include <cstdlib>
#include <vector>
#include <unordered_map>
#include "ComputePiDigit.hpp"

int THREADS = std::thread::hardware_concurrency();
std::queue<int> digitPos;
std::unordered_map<int, int> digitHash;	//<pos, digit>

bool helpDigit(int& pos, std::mutex& qmutex, int& digit)
{
	std::lock_guard<std::mutex> lock(qmutex);
	if(digitPos.empty())
	{return false;}
	pos = digitPos.front();
	digitPos.pop();
	digit = computePiDigit(pos);
	return true;
}

void hashIt(int pos, int digit, std::mutex& hashmutex)
{
	std::lock_guard<std::mutex> lock(hashmutex);
	digitHash[pos]=digit;
}

void getDigit(std::mutex& qmutex, std::mutex& hashmutex)
{
	int pos = -1;
	int digit = -1;
	while(helpDigit(pos, qmutex, digit))
	{
		std::cout<<'.';
		std::cout.flush();
//		std::cout<<pos;
		hashIt(pos, digit, hashmutex);
	}
}

int main()
{
	std::cout<<"Begin "<<THREADS<<" threads\n";

	std::mutex qmutex;
	std::mutex hashmutex;

//	digitHash.reserve(1000);

	for (int i=1;i<=1000;i++)
	{
		digitPos.push(i);
	}

	//make a vector of all the threads
	std::vector<std::thread> threads;
	for (int i=0;i<THREADS;i++)
	{
		threads.push_back(std::thread(getDigit, std::ref(qmutex), std::ref (hashmutex)));
	}

	for (int i=0;i<THREADS;i++)
	{
		threads[i].join();	//ends them
	}

	//then print pi and exit nicely
	std::cout<<"\n3.";
	for(int i=1;i<=1000;i++)
	{
		std::cout<<digitHash[i];
	}

	return 0;
}

