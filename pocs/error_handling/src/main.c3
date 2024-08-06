module error_handling;
import std::io;

fault MathError{
    DIVISION_BY_ZERO
}

fn void main(){
    double! ratio = divide(10, 0);
    if (catch err = ratio){
        case MathError.DIVISION_BY_ZERO:
            io::printn("Division by zero\n");
            return;
        default:
            io::printn("Unexpected error!");
            return;
    }
    io::printfn("Ratio was %f", ratio);
}

fn double! divide(int a, int b){
    // We return an optional result of type DIVISION_BY_ZERO
    // when b is zero.
    if (b == 0) return MathError.DIVISION_BY_ZERO?;
    return (double)a / (double)b;
}
