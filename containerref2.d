@safe:

struct Array {
	@safe:
	int[10] arr;

	void get(size_t i, out int into) {
		into = this.arr[i];
	}
}

void fun(out int into) {
	Array a;
	a.get(2, into);
}

void main() {
	int a;
	fun(a);
}
