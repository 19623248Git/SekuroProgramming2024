#include <bits/stdc++.h>
using namespace std; 

vector<vector<float>> coords
{
	{0},
	{0}
};
int iterate = 0;
int redo = 0;

//vector [0][iter] -> x coordinate
//vector [1][iter] -> y coordinate

void lokasi(){
	cout << "(" << coords[0][iterate] << " , " <<coords[1][iterate] << ")\n";
}

void gerak (float x, float y){
	coords[0].push_back(x+coords[0][iterate-1]);
	coords[1].push_back(y+coords[1][iterate-1]);
	// cout << "(" << x << " , " << y << ")\n";
}

void gerak_2 (float v, float t, float theta){
	float x,y;
	double radian;
	radian = theta*(M_PI/180);
	x = v*cos(radian)*t;
	y = v*sin(radian)*t;
	coords[0].push_back(x+coords[0][iterate-1]);
	coords[1].push_back(y+coords[1][iterate-1]);
	// cout << "(" << v << " , " << t << " , " << theta << ")\n";
}

void load(){
	ifstream ReadFile("History.txt");
	string getdata;
	int xy = 0; //(0 artinya x, 1 artinya y)
	while(getline(ReadFile,getdata)){
		if (getdata.substr(0,3) == "idx"){
			iterate = stoi(getdata.substr(4,getdata.length()));
		}
		else if (getdata.substr(0,3) == "red"){
			redo = stoi(getdata.substr(4,getdata.length()));
		}
		else{
			// cout << getdata << endl;
			coords[xy].push_back(stof(getdata));
			if (xy == 0){
				xy = 1;
			}
			else if (xy == 1){
				xy = 0;
			}

		}
	}
}

void save(){
	ofstream MyFile ("History.txt");
	MyFile << "idx=" << iterate << "\n";
	MyFile << "red=" << redo << "\n";
	for (int i = 1; i < coords[0].size(); i++){
		MyFile << coords[0][i] << "\n" << coords[1][i] << "\n"; 
	}
}


int main(int argc, char const *argv[])
{
	string opsi = "a";
	string bullet = ">";

	cout << bullet << " lokasi\n" << bullet << " gerak\n" << bullet << " gerak_2\n" << bullet << " undo\n" << bullet << " redo\n" << bullet << " save\n" << bullet << " load\n" << bullet << " keluar :D\n";

	while (opsi != "keluar") {
		cin >> opsi;
			if (opsi == "lokasi" ||opsi ==  "LOKASI" ||opsi ==  "Lokasi"){
				lokasi();
			}
			if (opsi == "gerak" ||opsi ==  "GERAK" ||opsi ==  "Gerak"){
				iterate += 1;
				float x,y;
				cout <<"x: ";
				cin >> x;
				cout <<"y: ";
				cin >> y;
				gerak(x, y);
				redo = 0;
			}
			if(opsi == "gerak_2" ||opsi ==  "GERAK_2" ||opsi ==  "gerak2" ||opsi ==  "GERAK2" ||opsi ==  "Gerak_2"){
				iterate += 1;
				float v,t,theta;
				cout << "v: ";
				cin  >> v;
				cout << "t: ";
				cin >> t;
				cout << "theta: ";
				cin >> theta;
				gerak_2(v,t,theta);
				redo = 0;
			}
			if (opsi == "undo" ||opsi ==  "UNDO" ||opsi ==  "Undo"){
				if (iterate != 0){
					iterate -=1;
					redo += 1;
					cout << "undo berhasil\n";
				}
				else{
					cout << "undo tidak berhasil\n";
				}
			}	
			if (opsi == "redo" ||opsi ==  "REDO" ||opsi ==  "Redo"){
				if(redo > 0){
					redo -= 1;
					iterate+=1;
					cout << "redo berhasil\n";
				}
				else{
					cout << "redo tidak berhasil\n";
				}
			} 
			if (opsi == "save" ||opsi == "SAVE" ||opsi == "Save"){
				save();
			}

			if (opsi == "load"||opsi == "LOAD"||opsi == "Load"){
				load();
			}
		}
	return 0;
}