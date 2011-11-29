#ifndef MAIN_H
#define MAIN_H
#include "daysOfWeek.h"
#include "course.h"
#include "dtime.h"
#include "timeInterval.h"
#include <vector>
#include <string>
#include <iostream>
#include <sstream>
using namespace std;
	void help();
	void add(vector<Course>& s, const string* input, size_t size);
	void clear(vector<Course>& sch);
	void exportSch(const vector<Course>& s, string fileName);
	void importSch(vector<Course>& s, string fileName);
	void remove(vector<Course>& s, string courseCode, string sections);
	void validate(const vector<Course>& s);
	void parseInput(string* parse, string input, size_t size);
	int countWords(string input);
#endif
