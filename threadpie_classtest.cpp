//each core will work on a task to compute a single digit
//sharing a common data structure from which to obtain the tasks
//also sharing a structure into which results will be placed

#include <queue>
#include <iostream>
#include <mutex>
#include <thread>
#include <cstdlib>
#include <vector>
#include <unordered_map>
#include "ComputePiDigit.hpp"

int THREADS = std::thread::hardware_concurrency();
//std::queue<int> digitPos;
//std::unordered_map<int, int> digitHash;	//<pos, digit>

class Queue(std::mutex& qmutex)
{
public:
	Queue();
	Queue(std::mutex& qmutex);
};

Queue::Queue(std::mutex& qmutex)
{
	std::lock_guard<std::mutex> lock(qmutex);
	std::queue<int> *digitqueue;
	//initialize to 1000 here?
}

class HashTable()
{
public:
	HashTable();
	HashTable(std::mutex& hashmutex);
};

HashTable::HashTable(std::mutex& hashmutex)
{
	std::lock_guard<std::mutex> lock(hashmutex);
	std::unordered_map<int, int> *hash;	//<pos, digit>
	hash.reserve(1000);
}

void helpDigit(int& pos, std::mutex& qmutex, int& digit)
{
	std::lock_guard<std::mutex> lock(qmutex);
	pos = digitPos.front();
	digit = computePiDigit(pos+1);
	digitPos.pop();
}
/*
void hashIt(int pos, int digit, std::mutex& hashmutex)
{
	std::lock_guard<std::mutex> lock(hashmutex);
	digitHash[pos]=digit;
}
*/
void getDigit(HashTable digitHash&, Queue digitPos&, std::mutex& qmutex, std::mutex& hashmutex)
{

	while(!digitPos.empty())
	{
		int pos = -1;
		std::cout<<'.';
		std::cout.flush();
		int digit = -1;
		helpDigit(pos, qmutex, digit);
		std::cout<<pos;
		digitHash[pos]=digit;
	}
}

int main()
{
	std::cout<<"Begin "<<THREADS<<" threads\n";

	std::mutex qmutex;
	std::mutex hashmutex;
	Queue digitPos(std::mutex qmutex);
	HashTable digitHash(std::mutex hashmutex);

	for (int i=0;i<1000;i++)
	{
		digitPos.push(i);
	}

	//make a vector of all the threads
	std::vector<std::thread> threads;
	for (int i=0;i<THREADS;i++)
	{
		threads.push_back(std::thread(getDigit, digitHash, digitPos, std::ref(qmutex), std::ref (hashmutex)));
	}

	for (int i=0;i<THREADS;i++)
	{
		threads[i].join();	//ends them
	}

	//then print pi and exit nicely
	std::cout<<"3.";
	for(int i=1;i<=1000;i++)
	{
		std::cout<<digitHash[i];
	}

	return 0;
}

