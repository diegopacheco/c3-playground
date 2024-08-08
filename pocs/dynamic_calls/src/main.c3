import std::io;

struct Bob (MyName) { int x; }

interface MyName{
    fn String myname();
}

// Required implementation as Bob implements MyName
fn String Bob.myname(Bob*) @dynamic { return "I am Bob!"; }

// Ad hoc implementation
fn String int.myname(int*) @dynamic { return "I am int!"; }

fn int main(){
    int i = 1;
    double d = 1.0;
    Bob bob = Bob{.x = 1};

	io::printfn("I am int: %s", i.myname());
	io::printfn("I am Bob: %s", bob.myname());
	
	// Error: There is no member or method 'myname' on 'double'
	//io::printfn("I am double: %s", d.myname());
    return 0;
}