module catch_if;
import std::io;

fault BadError{
    CALL_BATMAN
}

fn int main(String[] args){
	
	int! result = goodLuck();
	if (catch anyfault error = result){
		io::printfn("Error: %s",error);
	}

	return 0;
}

fn int! goodLuck(){
	return BadError.CALL_BATMAN?;
}
