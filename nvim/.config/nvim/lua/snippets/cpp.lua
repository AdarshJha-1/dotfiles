local ls = require 'luasnip'

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets('cpp', {

    s('cp', {

        t {
            '#include <bits/stdc++.h>',
            'using namespace std;',
            'using ll = long long;',
            '',
            '// Problem Statement',
            '/*',
            '    ',
            '*/',
            '',
            '// Observations',
            '/*',
            '    ',
            '*/',
            '',
            'void solve()',
            '{',
            '}',
            '',
            'int main()',
            '{',
            '    ios::sync_with_stdio(false);',
            '    cin.tie(nullptr);',
            '',
            '    int t = 1;',
            '    // cin >> t;',
            '    while (t--)',
            '    {',
            '        solve();',
            '    }',
            '}',
            '',
            '/*',
            '⣿⣿⣿⣿⣿⣷⣿⣿⣿⡅⡹⢿⠆⠙⠋⠉⠻⠿⣿⣿⣿⣿⣿⣿⣮⠻⣦⡙⢷⡑⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣌⠡⠌⠂⣙⠻⣛⠻⠷⠐⠈⠛⢱⣮⣷⣽⣿',
            '⣿⣿⣿⣿⡇⢿⢹⣿⣶⠐⠁⠀⣀⣠⣤⠄⠀⠀⠈⠙⠻⣿⣿⣿⣦⣵⣌⠻⣷⢝⠦⠚⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢟⣻⣿⣊⡃⠀⣙⠿⣿⣿⣿⣎⢮⡀⢮⣽⣿⣿',
            '*/',
        },

        i(1),
    }),
})
