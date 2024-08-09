module generics_stack;
import std::io;
import stack;

def IntStack = Stack(<int>);

fn int main(String[] args){
   	IntStack stack = {1, 1, {}};
    stack.push(1);
    stack.push(2);
    stack.push(3);
	io::printfn("size %d", stack.empty());
    while (!stack.empty()){
        io::printfn("%d", stack.pop());
    }
    return 0;
}