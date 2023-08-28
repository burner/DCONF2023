import std.array : appender;
import std.conv : to;

string toString(int[] arr) {
	auto app = appender!string();
	size_t idx;

	void toString(int a) {
		if(idx > 0) {
			app.put(", ");
		}
		app.put(to!string(a));
	}

	foreach(it; arr) {
		toString(it);
		++idx;
	}

	return app.data;
}

int main(string[] args) {
	string s = toString([1,2,3,4,5,]);
	return s.length > 0;
}
