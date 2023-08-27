import std.typecons : Tuple, tuple;
import std.math : isClose;

Tuple!(double,double) gps() {
	double lon = 1.0;
	double lat = 2.0;

	return tuple(lon,lat);
}

void main() {
	Tuple!(double,double) c = gps();
	double lon = c[1];
	double lat = c[0];

	assert(isClose(lon, 1.0));
	assert(isClose(lat, 2.0));
}
