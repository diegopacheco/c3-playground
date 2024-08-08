module comptime_reflection_exec;
import std::io;

struct Person{
    long id;
    int age ;
    String name;
}

macro print_fields($Type){
    $foreach ($field : $Type.membersof)
        io::printfn("Field %s, offset: %s, size: %s, type: %s",
                $field.nameof, $field.offsetof, $field.sizeof, $field.typeid.nameof);
    $endforeach
}


fn void main(){
    print_fields(Person);
}