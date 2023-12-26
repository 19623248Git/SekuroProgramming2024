#include <bits/stdc++.h>
#include <cstdint>
#include "pbPlots/pbPlots.cpp"
#include "pbPlots/supportLib.cpp"

using namespace std;

using twoDvecf = std::vector<std::vector<float>>;

class matrix
{
private:
    int m_row;
    int m_column;
    vector<vector<float>> m_arr;

public:
    matrix(int row, int column, twoDvecf arr = {})
        : m_row(row), m_column(column), m_arr(arr.empty() ? twoDvecf (row, vector<float> (column, 0)) : arr) {}

    matrix(twoDvecf arr = {})
        : m_row(arr.empty() ? 1 : arr.size()), m_column(arr.empty() ? 1 : arr[0].size()), m_arr(arr.empty() ? twoDvecf(1, vector<float> (1,0)) : arr) {}

    void printout()
    {
        cout << this->m_row <<" X "<< this->m_column << endl << endl;
        for (int i = 0; i < this->m_row; i++){
    		for (int j = 0; j < this->m_column ; j++){
    			cout << this->m_arr[i][j] << " ";
    		};
    		cout << endl;
    	};
    }

    void SetValue(twoDvecf arr){
    	for (int i = 0; i < this->m_row; i++){
    		for (int j = 0; j < this->m_column ; j++){
    			this->m_arr[i][j] = arr[i][j];
    		};
    	};
    }	

    twoDvecf getarray(){
    	return this->m_arr;
    }

    matrix operator+(const matrix& other){
    	if (this->m_row != other.m_row || this->m_column != other.m_column)
		{
    		cout << "Matriks harus punya ukuran sama untuk penambahan";
    		twoDvecf new_arr (1, vector<float> (1,0));
    		return matrix(1, 1, new_arr);
		}
		else {
			twoDvecf new_arr (this->m_row, vector<float> (this->m_column,0));
    		for (int i = 0; i < this->m_row; i++){
    			for (int j = 0; j < this->m_column ; j++){
    			new_arr	[i][j] = this->m_arr[i][j] + other.m_arr[i][j];
    			};
    		};
        	return matrix(this->m_row, this->m_column, new_arr);
		}
    }

    matrix operator-(const matrix& other){
    	if (this->m_row != other.m_row || this->m_column != other.m_column)
		{
    		cout << "Matriks harus punya ukuran sama untuk pengurangan";
    		twoDvecf new_arr (1, vector<float> (1,0));
    		return matrix(1, 1, new_arr);
		}
		else {
			twoDvecf new_arr (this->m_row, vector<float> (this->m_column,0));
    		for (int i = 0; i < this->m_row; i++){
    			for (int j = 0; j < this->m_column ; j++){
    			new_arr	[i][j] = this->m_arr[i][j] - other.m_arr[i][j];
    			};
    		};
        	return matrix(this->m_row, this->m_column, new_arr);
		}
    }

    /*
    perkalian
    matrix (row x column), example: matrix (2x3)
   	to multiply:
    row == other column, column == other row
    new column = other column
    new row = row
    */

    matrix operator*(const matrix& other){
    	if (this->m_column != other.m_row)
		{
    		cout << "Matriks tidak valid untuk perkalian\n";
    		twoDvecf new_arr (1, vector<float> (1,0));
    		return matrix(1, 1, new_arr);
		}
		else {
			twoDvecf new_arr (this->m_row, vector<float> (other.m_column,0));
    		for (int i = 0; i < this->m_row; i++){
    			for(int j = 0; j < other.m_column; j++){
    				float value = 0;
    				for (int k = 0; k < this->m_column; k++){
    					value += this->m_arr[i][k]* other.m_arr[k][j];
    				}
    				new_arr[i][j] = value;
    			}
    		}
        	return matrix(this->m_row, other.m_column, new_arr);
		}
    }

    matrix operator*(const float deltatime){
			twoDvecf new_arr (this->m_row, vector<float> (this->m_column,0));
    		for (int i = 0; i < this->m_row; i++){
    			for(int j = 0; j <this->m_column; j++){
    				new_arr[i][j] = this->m_arr[i][j]*deltatime;
    			}
    		}
        	return matrix(this->m_row, this->m_column, new_arr);
    }
};

class swerve{
private:
	float m_vx;
	float m_vy;
	float m_omega;
	float m_deltatime;
	float m_r = 0.26363;
	twoDvecf m_chunk;
	twoDvecf m_dataPos; //x,y,theta
	twoDvecf m_dataAdd; //vx, vy, omega
	twoDvecf m_dataV;
	matrix m_matrchunk;
	matrix m_matradd;
	matrix m_matrpos;
	matrix m_result;

public:
	swerve(twoDvecf dataPos = {})
		: m_vx(0), m_vy(0), m_omega(0), m_deltatime(0), m_dataPos(dataPos.empty() ? twoDvecf (3, vector<float> (1, 0)) : dataPos), m_dataAdd({{this->m_vx},{this->m_vy},{this->m_omega}}), m_chunk({
		{1, 0, -m_r},
		{0, 1, m_r},
		{1, 0, -m_r},
		{0, 1, m_r},
		{1, 0, -m_r},
		{0, 1, m_r},
		{1, 0, -m_r},
		{0, 1, m_r}})
		,m_matrchunk (this->m_chunk), m_matradd(this->m_dataAdd), m_matrpos(this->m_dataPos)
		{}


	void SetVelocity(float vx, float vy, float omega){
		this->m_vx = vx;
		this->m_vy = vy;
		this->m_omega = omega;
		this->m_dataAdd = {{vx},{vy},{omega}};
		m_matradd.SetValue(this->m_dataAdd);
	}

	twoDvecf velocityCommand(float vx, float vy, float omega){
		
		this->m_dataAdd = {{vx},{vy},{omega}};
		m_matradd.SetValue(this->m_dataAdd);

		m_result = m_matrchunk*m_matradd;
		this->m_dataV = m_result.getarray();
		return this->m_dataV;  
	}

	twoDvecf updatePose(float deltatime){
		m_matrpos = m_matrpos+(m_matradd*deltatime);
		this->m_dataPos = m_matrpos.getarray();
		return this->m_dataPos;
	}
};


double resultant(float x, float y){
	double result;
	x = x*x;
	y = y*y;
	result = sqrt(x + y);
	return result;
}

void graph (vector<double> x_axis, vector<double> y_axis,int image_num){
	bool success;
	StringReference *errorMessage = CreateStringReferenceLengthValue(0, L' ');
	RGBABitmapImageReference *imageReference = CreateRGBABitmapImageReference();

	vector<double> xs = x_axis;
	vector<double> ys = y_axis;

	success = DrawScatterPlot(imageReference, 600, 400, &xs, &ys, errorMessage);

	if(success){
		vector<double> *pngdata = ConvertToPNG(imageReference->image);
		string name = "grafik_" + to_string(image_num) + ".png";
		WriteToFile(pngdata, name);
		DeleteImage(imageReference->image);
	}else{
		cerr << "Error: ";
		for(wchar_t c : *errorMessage->string){
			wcerr << c;
		}
		cerr << endl;
	}

	FreeAllocations();
}

int main(int argc, char const *argv[])
{	
	float vx,vy,omega;
	float x,y,theta;
	float time_limit, time_increment;
	time_limit = 6.3;
	time_increment = 0.01;
	x = 0;
	y = 0;
	theta = 0;
	twoDvecf start = {{x},{y},{theta}};
	swerve simulasi(start);
	twoDvecf position = start;
	twoDvecf velocity = {{0},{0},{0},{0},{0},{0},{0},{0}};
	twoDvecf currentPose;
	twoDvecf currentVel;

	omega = 0;
	
	vector<double> time_increments = {0};

	//simulasi
	for (double t = 0+time_increment; t < time_limit; t+=time_increment){
		vx = 48 * cos(t) * pow(sin(t),2);
		vy = (4 * sin(4*t)) + (6 * sin(3*t)) + (10 * sin(2*t)) - (13 * sin(t));
		
		simulasi.SetVelocity(vx,vy,omega);
		
		currentPose = simulasi.updatePose(time_increment);

		for (int i = 0; i < currentPose.size(); i++){
			for (int j = 0; j < currentPose[i].size(); j++){
				position[i].push_back(currentPose[i][j]);
			}
		}

		currentVel = simulasi.velocityCommand(vx, vy, omega);

		for (int i = 0; i < currentVel.size(); i++){
			for (int j = 0; j < currentVel[i].size(); j++){
				velocity[i].push_back(currentVel[i][j]);
			}
		}

		time_increments.push_back(t);

	}

	// cout << position.size()<<endl;
	// cout << position[0].size()<<endl;

	// cout << velocity.size()<<endl;
	// cout << velocity[0].size()<<endl;

	int pos_size = position[0].size();
	vector<double> arr_x ;
	vector<double> arr_y ;
	vector<double> arr_omega ;

	for (int i = 0; i < pos_size; i++){
		arr_x.push_back(position[0][i]);
		arr_y.push_back(position[1][i]);
		arr_omega.push_back(position[2][i]);
	}

	int image_order = 1;
	graph(arr_x,arr_y,image_order);
	image_order+=1;

	int vel_size = velocity[0].size();
	vector<double>arr_v1 ;
	vector<double>arr_v2 ;
	vector<double>arr_v3 ;
	vector<double>arr_v4 ;

	for (int i = 0; i < vel_size; i++){
		arr_v1.push_back(resultant(velocity[0][i], velocity[1][i]));
		arr_v2.push_back(resultant(velocity[2][i], velocity[3][i]));
		arr_v3.push_back(resultant(velocity[4][i], velocity[5][i]));
		arr_v4.push_back(resultant(velocity[6][i], velocity[7][i])); 
	}

	graph(time_increments,arr_v1,image_order);
	image_order+=1;
	graph(time_increments,arr_v2,image_order);
	image_order+=1;
	graph(time_increments,arr_v3,image_order);
	image_order+=1;
	graph(time_increments,arr_v4,image_order);
	image_order+=1;

	// twoDvecf test ={{1},{2},{3}};
    // swerve myswerve(1.0f,2.0f,3.0f,4.0f,test);
    // twoDvecf velocity_overtime = myswerve.velocityCommand(1.0f, 2.0f, 3.0f);
    // twoDvecf position_overtime = myswerve.updatePose(4);

    cout << "------------------\n";
    cout << "Program Bekerja dengan Sesuai\n";
    return 0;
}
