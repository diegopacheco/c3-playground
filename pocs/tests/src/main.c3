module main;
import std::io;
import sum;
 
fn int main(String[] args){
	io::printfn("%d + %d = %d", 1, 2, sum::sum(1, 2));
	return 0;
}