#include <iostream>
class LinearLine
{
private:
	float x1;
	float x2;
	float y1;
	float y2;
public:
LinearLine (float x1, float y1, float x2, float y2) {
this->x1 = x1;
this->x2 = x2;
this->y1 = y1;
this->y2 = y2;
}
float gradient() {
	float m;
	float y_diff;
	float x_diff;
	y_diff = this->y2 - this->y1;
	x_diff = this->x2 - this->x1;
	m = y_diff/x_diff;
	return m;
}
float y_intercept() {
	/*y - y1 = m(x - x1)
	y-intercept -> x = 0
	misal (x1,y1)
	y = y1 - m*x1
	*/
	float y_cut;
	float m = gradient();
	y_cut = this->y1 - (m*this->x1);
	return y_cut;
}
void operator + (float a) {
	std::cout << "y = " << gradient() << "x+" << y_intercept()+gradient()*a*-1;
}
void printEquation() {
	std::cout << "y = " << gradient() << "x+" << y_intercept() << std::endl;
}
void printPoints() {
	std::cout << "(x1, y1) = (" << this->x1 << ", " << this->y1 << ")" << std::endl;
	std::cout << "(x2, y2) = (" << this->x2 << ", " << this->y2 << ")" << std::endl;
} 
};
int main()
{
LinearLine line(1.0f, 8.0f, 2.0f, 3.0f); // inisialisasi objek line
int a = 3; // nilai banyaknya penggeseran pada persamaan linear

line.printPoints();
std::cout << "Sehingga didapatkan" << std::endl;
std::cout << "gradient = " << line.gradient() << std::endl;
std::cout << "y_intercept = " << line.y_intercept() << std::endl;
line.printEquation();
std::cout << "Setelah digeser sejauh a, didapatkan persamaan baru:" << std::endl;
line + a;
}