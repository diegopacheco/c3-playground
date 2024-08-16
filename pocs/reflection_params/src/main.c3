module reflection_params;
import std::io;

def TestFunc = fn int(int, double);

fn int main(String[] args){
	String s = TestFunc.params[1].nameof; // "double"
	io::printfn("%s",s);
	return 0;
}
