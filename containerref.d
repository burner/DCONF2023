import std.typecons : Nullable;

@safe:

struct Array {
	@safe:
	int[10] arr;

	void get(size_t i
			, out Nullable!int into) 
	{
		if(i < this.arr.length) {
			into = this.arr[i];
		}
	}
}

void fun(out Nullable!int into) {
	Array a;
	a.get(2, into);
}

void main() {
	Nullable!int a;
	fun(a);
}

void fun2(const(int)[] arr) {
}

void fun3() {
	const(int[]) arr = [1,2,3];
	fun2(arr);
}
