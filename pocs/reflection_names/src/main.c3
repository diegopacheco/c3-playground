module reflection_names;
import std::io;

enum FooEnum{
    BAR,
    BAZ
}

fn int main(String[] args){
	String[] x = FooEnum.names; // ["BAR", "BAZ"]
	foreach(String name : x){
		io::printfn("%s",name);
	}
	return 0;
}
