module lambda;
import std::io;

def IntTransform = fn int(int);

fn void apply(int[] arr, IntTransform t){
    foreach (&i : arr) *i = t(*i);
}

fn void main(){
    int[] x = { 1, 2, 5 };
    
    apply(x, fn (i) => i * i);
    
    io::printfn("%s", x);
}
