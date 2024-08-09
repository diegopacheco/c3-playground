module fp_default_args;
import std::io;

def TestFn = fn void(int y = 123);

fn void test(int x = 5){
    io::printfn("X = %d",x);
}

fn int main(String[] args){
	TestFn test2 = &test;
    test();        // Prints X = 5
    test2();       // Prints X = 123
    test(.x = 3);  // Prints X = 3
    test2(.y = 4); // Prints X = 4
	return 0;
}
