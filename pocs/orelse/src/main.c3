module orelse;
import std::io;

fault Oopsy{
	DAYZE
}

fn int main(String[] args){
	int res = risky() ?? -1;
	io::printfn("Result: %d ", res);
	return 0;
}

fn int! risky(){
	return Oopsy.DAYZE?;
}
