local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
	s(
		"main",
		fmt(
			[[
    #include <iostream>
    #include <bits/stdc++.h>

    int main() {{
      int t;
      cin >> t;

      while (t--) {{
        {}
      }}
    }}

    ]],
			{
				i(0),
			}
		)
	),
}
