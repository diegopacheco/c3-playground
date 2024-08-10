module varargs;
import std::io;

fn int main(String[] args){
	printInts(1, 2, 3, 4, 5);
	printInts(6);
	return 0;
}

fn void printInts(int... is){
	foreach(int i : is){
		io::printn(i);
	}
}
