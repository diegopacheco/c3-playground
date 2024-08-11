module fault_without_unwrap;
import std::io;

fn int main(String[] args){
	int! result = maybe();
	anyfault f = @catch(result);

	if (!f){
    	// No error!
		io::printfn("Result: %d ", !f);
	}
	return 0;
}

fn int! maybe(){
	return 42;
}
