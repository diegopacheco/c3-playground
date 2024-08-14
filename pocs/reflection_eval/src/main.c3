module reflection_eval;
import std::io;

fn int sum(int a, int b){
	io::printfn("sum %d + %d = %d", a , b, a+b);
	return a + b;
}

fn int main(String[] args){

	int a = 123;         
	$eval("a") = 222;   
	io::printfn("a = %d", a);

	$eval("sum")(a,a); 	
	return 0;
}
