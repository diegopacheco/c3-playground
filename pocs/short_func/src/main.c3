module short_func;
import std::io;

// short function form
fn int square(int x) => x * x;

fn int main(String[] args){
	io::printfn("square(5) = %d", square(5));
	return 0;
}
