module fixed_arrays;
import std::io;

fn int main(String[] args){
	
	int[3] arrOne = { 1, 2, 3 };
	int[*] arrTwo = { 4, 5, 6 }; // Type inferred to be int[3]

	for(int i = 0; i < 3; i++){
		io::printfn("arrOne[%d] = %d", i,arrOne[i]);
		io::printfn("arrTwo[%d] = %d", i,arrTwo[i]);
	}

	return 0;
}
