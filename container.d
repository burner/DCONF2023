// @safe:

struct Array {
	int[10] arr;

	ref int opIndex(size_t i) {
		return this.arr[i];
	}
}

void main() {
	int* a = &fun();
}

ref int fun() {
	Array a;
	return a[2];
}
