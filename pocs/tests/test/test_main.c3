module tests;
import std::io;
import sum;

fn void test_sum(){
    int result = sum::sum(1, 2);
    assert(result == 3, "Sum of 1 and 2 should be 3");
    io::printfn("test_sum DONE.");
}

fn int main(String[] args){
    test_sum();
	io::printfn("Tests DONE.");
	return 0;
}