module if_try_optional;
import std::io;

fn int main(String[] args){
	
	int! x = maybe();
	if (try int result = x){
		io::printfn("%d",result);
	}else{
		io::printfn("No value");
	}

	return 0;
}

fn int! maybe(){
	return 42;
}