module contracts;
import std::io;

fn int main(String[] args){
	int[] arr = {1, 2, 3};
	getLastElement(arr, 3);
	
	testFoo(-1);
	return 0;
}

/**
 * @param foo "the number of foos"
 * @require foo > 0, foo < 1000
 * @return "number of foos x 10"
 * @ensure return < 10000, return > 0
 **/
fn int testFoo(int foo){
    return foo * 10;
}

/**
 * @param array "the array to test"
 * @param length "length of the array"
 * @require length > 0
 **/
fn int getLastElement(int* array, int length){
    return array[length - 1];
}
