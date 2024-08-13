module reflection_alignof;
import std::io;

struct Person @align(8){
    int id;
}

fn int main(String[] args){
	uint res = Person.alignof; // 8
	io::printfn("Person.alignof: %d", res);
	return 0;
}
