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

private ptrdiff_t saneIndexOf(Range)(Range s, dchar c
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
