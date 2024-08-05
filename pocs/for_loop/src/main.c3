module for_loop;
import std::io;

fn int main(String[] args){
	loop2(10);
	return 0;
}

fn void loop2(int n){
	for(int i=0;i<n;i++){
		io::printn(i);
	}
}