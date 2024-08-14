module enable_foreach;
import std::io;

struct Foo{
  double[] x;
}

fn double Foo.get(&self, usz i) @operator([]){
    return self.x[i];
}

fn usz Foo.len(&self) @operator(len){
    return self.x.len;
}

fn int main(String[] args){
	Foo f = Foo{.x = {1.0, 2.0, 3.0}};
	foreach(double x : f){
		io::printfn("%d ", x);
	}
	return 0;
}