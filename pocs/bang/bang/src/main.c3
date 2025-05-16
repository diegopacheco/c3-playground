module bang;
import std::io;

fault MyError
{
    INVALID_VALUE,
    OUT_OF_RANGE
}


fn int main(String[] args)
{
    io::printn(getIntForSure());

    int! result = getInt();
    if (catch anyfault error = result)
    {
        io::printn("Error oops");
    }
    return 0;
}

fn int getIntForSure()
{
    // Error: It is not possible to cast 'void*' to 'int'.
    // return null;
    return 100;
}

// This function is not guaranteed to return an int
fn int! getInt()
{
    return MyError.INVALID_VALUE?;
    //return 42;
}