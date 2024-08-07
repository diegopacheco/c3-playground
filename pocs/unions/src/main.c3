module unions;
import std::io;

union Either{
	int i;
	bool b;
}

fn int main(String[] args){
	printEither(Either{.i=42});
	printEither(Either{.b=true});
	return 0;
}

fn void printEither(Either e){
	if(e.b){
		io::printfn("bool: %b",e.b);
	}else{
		io::printfn("int: %d",e.i);
	}
}