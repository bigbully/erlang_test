-module(geometry).
-export([area/1, test/0, girth/1]).

area({rectangle, Width, Height}) -> Width * Height;
area({square, Side}) -> Side * Side;
area({circle, R}) -> 3.14 * R * R;
area({triangle, A, B}) -> A * B / 2.

girth({rectangle, Width, Height}) -> (Width + Height) * 2;
girth({square, Side}) -> Side * 4;
girth({circle, R}) ->  2 * 3.14 * R;
girth({triangle, A, B}) -> math:sqrt(A * A + B * B).

test() ->
	12 = area({rectangle, 3, 4}),
	144 = area({square, 12}),
	tests_worked.

