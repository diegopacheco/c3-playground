module foreach_array;
import std::io;

fn int main(String[] args){
	
	int[5] arr = {1, 2, 3, 4, 5};
	foreach(int i : arr){
		io::printfn("%d",i);
	}

	foreach (int idx, int* &v : arr){
		io::printfn("index: %d value: %d",idx,*v);
	}

	return 0;
}
