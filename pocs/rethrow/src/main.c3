module rethrow;
import std::io;

fault Error{
	PANIC,
}

fn int main(String[] args){
	int! result = caller();
	if (catch f = result){
		io::printfn("Caught a fault: %s",f);
	} else {
		io::printfn("Result: %d", result);
	}
	return 0;
}

fn int! caller(){
	int! result = riskyBusiness();
	if (catch f = result){
    	return f?; // Pass the fault upwards.
	} 
	return 42;
}

fn int! riskyBusiness() {
	return Error.PANIC?;
}


