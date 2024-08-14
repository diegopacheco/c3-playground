module enable_elementset;
import std::io;

struct Foo{
  double[] x;
}

// element set
fn void Foo.get_ref(&self, usz i, double new_val) @operator([]=){
    self.x[i] = new_val;
}

// element get
fn double Foo.get(&self, usz i) @operator([]){
    return self.x[i];
}

fn int main(String[] args){
	Foo foo = Foo{ .x={1.0, 2.0, 3.0}};
	foo[0] = 4.0;
	foo[1] = 5.0;
	foo[2] = 6.0;

	io::printfn("foo[0] = %f", foo[0]);
	io::printfn("foo[1] = %f", foo[1]);
	io::printfn("foo[2] = %f", foo[2]);

	return 0;
}
