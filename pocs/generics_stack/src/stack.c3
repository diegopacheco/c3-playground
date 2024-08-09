module stack(<Type>);

import std::io;

struct Stack{
    usz capacity;
    usz size;
    Type* elems;
}

fn void Stack.push(Stack* this, Type element){
    if (this.capacity == this.size){
        this.capacity *= 2;
        io::printfn("resizing");
        this.elems = realloc(this.elems, Type.sizeof * this.capacity);
    }
    this.elems[this.size++] = element;
}

fn Type Stack.pop(Stack* this){
    assert(this.size > 0);
    return this.elems[--this.size];
}

fn bool Stack.empty(Stack* this){
    return !this.size;
}