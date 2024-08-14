module enable_elementat;
import std::io;

struct Foo{
  double[] x;
}


fn double Foo.get(&self, usz i) @operator([]){
    return self.x[i];
}

fn int main(String[] args){
	Foo foo = Foo{.x={1.0, 2.0, 3.0}};
	io::printfn("foo[0] = %f\n", foo[0]);
	io::printfn("foo[1] = %f\n", foo[1]);
	io::printfn("foo[2] = %f\n", foo[2]);
	return 0;
}
