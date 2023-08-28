import std.typecons : Nullable;
import std.traits : FieldNameTuple;

enum CaseSensitive {
	no,
	yes
}

ptrdiff_t indexOf(Range)(Range s, dchar c, CaseSensitive cs = Yes.caseSensitive)
if (isInputRange!Range && isSomeChar!(ElementType!Range) && !isSomeString!Range)
{
    return _indexOf(s, c, cs);
}

/// Ditto
ptrdiff_t indexOf(C)(scope const(C)[] s, dchar c
		, CaseSensitive cs = Yes.caseSensitive)
if (isSomeChar!C)
{
    return _indexOf(s, c, cs);
}

/// Ditto
ptrdiff_t indexOf(Range)(Range s, dchar c, size_t startIdx
		, CaseSensitive cs = Yes.caseSensitive)
if (isInputRange!Range && isSomeChar!(ElementType!Range) && !isSomeString!Range)
{
    return _indexOf(s, c, startIdx, cs);
}

/// Ditto
ptrdiff_t indexOf(C)(scope const(C)[] s, dchar c, size_t startIdx
		, CaseSensitive cs = Yes.caseSensitive)
if (isSomeChar!C)
{
    return _indexOf(s, c, startIdx, cs);
}

private ptrdiff_t _indexOf(Range)(Range s, dchar c
		, CaseSensitive cs = Yes.caseSensitive)
if (isInputRange!Range && isSomeChar!(ElementType!Range))
{
	// impl here
}

private ptrdiff_t _indexOf(Range)(Range s, dchar c, size_t startIdx
		, CaseSensitive cs = Yes.caseSensitive)
if (isInputRange!Range && isSomeChar!(ElementType!Range))
{
	// impl here
}

struct IndexOfParameter {
	Nullable!size_t startIdx;
	Nullable!CaseSensitive cs;
}

ptrdiff_t saneIndexOf(Range)(Range s, dchar c
		, IndexOfParameter idp = IndexOfParameter.init)
{
	alias ECT = ElementEncodingType!(Range);
	static assert(isSomeChar!(ECT), Range.stringof
			, " must consists of some kind of Character not "
			, ECT.stringof);

	//
	// jump depending on types and passed parameters
	// 
}

template unpack(T) {
	static if(is(T : Nullable!F, F)) {
		alias unpack = F;
	} else {
		alias unpack = T;
	}
}

ptrdiff_t saneIndexOf2(Range, Needle, T...)(Range r, Needle n, T args)
{
	IndexOfParameter params;
	static foreach(mem; __traits(allMembers, IndexOfParameter)) {{
		alias MT = typeof(__traits(getMember, IndexOfParameter, mem));
		alias MTUP = unpack!MT;
		static foreach(arg; args) {{
			static if(is(MTUP == typeof(arg))) {
				__traits(getMember, params, mem) = arg;
			}
		}}
	}}

	/// ....
	return 0;
}

unittest {
	auto idx = saneIndexOf2("Hello DConf", "o", 4);
}
