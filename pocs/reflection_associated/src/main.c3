module reflection_associated;
import std::io;

enum Foo : int (double d, String s){
    BAR = { 1.0, "normal" },
    BAZ = { 2.0, "exceptional" }
}

fn int main(String[] args){
	String s = Foo.associated[0].nameof; // "double"
	io::printfn("Associated name: %s", s);
	io::printfn("Associated name: %s", Foo.associated[1].nameof);
	return 0;
}
