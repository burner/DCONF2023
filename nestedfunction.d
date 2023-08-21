import std.array : appender;
import std.conv : to;

string toString(int[] arr) {
	auto app = appender!string();

	void toString(int a) {
		app.put(to!string(a));
	}

	foreach(idx, it; arr) {
		if(idx > 0) {
			app.put(", ");
		}
		toString(it);
	}

	return app.data;
}

int main(string[] args)
{
	string s = toString([1,2,3,4,5,]);
	return s.length > 0;
}
