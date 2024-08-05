module if_stmt;
import std::io;

fn int main(String[] args){
	printMe(10);
	return 0;
}

fn void printMe(int x){
	if(x == 0){
		io::printn("x is 0");
	}
	else{
		io::printn("x is not 0");
	}
}