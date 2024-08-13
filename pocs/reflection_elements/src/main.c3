module reflection_elements;
import std::io;

enum FooEnum{
    BAR,
    BAZ
}

fn int main(String[] args){
	int x = FooEnum.elements; // 2
	io::printfn("%d", x);
	return 0;
}
