module while_loop;
import std::io;

fn int main(String[] args){
	whileLoop(10);
	return 0;
}

fn void whileLoop(int n){
	int i = 0;
	while (i<n){
		io::printn(i);
		i += 1;
	}
}