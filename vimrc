set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'chilicuil/vim-sml-coursera'
call vundle#end()
filetype plugin indent on

imap <cr> <cr><left><right>
imap <C-a> :w !pbcopy<cr><cr>
map <C-a> :w !pbcopy<cr><cr>
imap <D-a> :w !pbcopy<cr><cr>
map <D-a> :w !pbcopy<cr><cr>
map <C-t> :tabnew<cr>
map <C-c> "+yy
map <f6> =a{
filetype on
syn on
set ru nu et sta nowrap ar acd ww=<,>,[,] noswf hls 
set autoindent
set autochdir
set background=dark
colo solarized

"enable backspace
set backspace=indent,eol,start

set mouse=a
set selection=inclusive
set selectmode=mouse,key
"set clipboard=unnamed
"set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

"if filereadable(expand('%<').'.in')
autocmd FileType java :set cin mp=javac\ -encoding\ utf-8\ %
autocmd FileType cpp :set cin mp=g++\ -std=c++11\ -Wall\ -o\ %<\ %
autocmd FileType cpp imap { {<ESC>o}<ESC>O
autocmd FileType cpp :set sts=4 ts=4 sw=4
autocmd FileType haskell :set expandtab ts=1 sw=1 mp=ghc\ %<.hs\ -o\ %<
autocmd FileType python :set expandtab sta sts=4 ts=4 sw=4 cinkeys-=0# indentkeys-=0#

let sml_coursera_interactive=1

"avoid vim placing # at the first column
"set cindent
"set cinkeys-=0#
"set indentkeys-=0#

map <f9> :call CR5()<CR>
func CR5()
exec 'w'
if &filetype == 'java'
        exec '!rm %<.class'
elseif &filetype == 'cpp'
        exec '!rm %<'
endif
if filereadable(expand('%<').'.in')
        exec '!g++ -std=c++11 -Wall -o %< %<.cpp'
else
        exec 'make'
endif
if &filetype == 'java' 
        exec '!java %<'
elseif filereadable(expand('%<').'.in')
        exec "!./%< < %<.in"
else
        exec '!./%<'
endif
endfunc

map <f2> :call CR3()<cr><space>
func CR3()
if &filetype == 'cpp'

let l = 0
"let l = l + 1 | call setline(l, '#include <bits/stdc++.h>')
let l = l + 1 | call setline(l, '//Create Time: '.strftime("%Y-%m-%d %H:%M:%S"))
let l = l + 1 | call setline(l, '#include <iostream>')
let l = l + 1 | call setline(l, '#include <cstdio>')
let l = l + 1 | call setline(l, '#include <cstring>')
let l = l + 1 | call setline(l, '#include <string>')
let l = l + 1 | call setline(l, '#include <cmath>')
let l = l + 1 | call setline(l, '#include <algorithm>')
let l = l + 1 | call setline(l, '#include <vector>')
let l = l + 1 | call setline(l, '#include <cstdlib>')
let l = l + 1 | call setline(l, '#include <sstream>')
let l = l + 1 | call setline(l, '#include <fstream>')
let l = l + 1 | call setline(l, '#include <functional>')
let l = l + 1 | call setline(l, '#include <list>')
let l = l + 1 | call setline(l, '#include <deque>')
let l = l + 1 | call setline(l, '#include <queue>')
let l = l + 1 | call setline(l, '#include <stack>')
let l = l + 1 | call setline(l, '#include <map>')
let l = l + 1 | call setline(l, '#include <set>')
let l = l + 1 | call setline(l, '#include <bitset>')
let l = l + 1 | call setline(l, '#include <cctype>')
let l = l + 1 | call setline(l, '#include <ctime>')
let l = l + 1 | call setline(l, '#include <utility>')
let l = l + 1 | call setline(l, '#include <complex>')
let l = l + 1 | call setline(l, '#include <cassert>')
let l = l + 1 | call setline(l, 'using namespace std;')
let l = l + 1 | call setline(l, '#define snuke(i,x) for (__typeof((x).begin()) i = (x).begin(); i != (x).end(); ++i)')
let l = l + 1 | call setline(l, '#define rep(i,a,n) for (int i=(a);i<(n);i++)')
let l = l + 1 | call setline(l, '#define per(i,a,n) for (int i=(n)-1;i>=(a);i--)')
let l = l + 1 | call setline(l, '#define OUT(x) std::cout<<(#x)<<":"<<(x)<<std::endl')
let l = l + 1 | call setline(l, '#define TST(x) std::cout<<(x)<<" "')
let l = l + 1 | call setline(l, '#define SZ(v) ((int)(v).size())')
let l = l + 1 | call setline(l, '#define all(v) (v).begin(), (v).end()')
let l = l + 1 | call setline(l, '#define unq(x) sort(ALL(x)),(x).erase(unique(ALL(x)),(x).end())')
let l = l + 1 | call setline(l, '#define mem(f,x) memset((f), (x), sizeof(f))')
let l = l + 1 | call setline(l, '#define clr(f) mem(f,0)')
let l = l + 1 | call setline(l, '#define x first')
let l = l + 1 | call setline(l, '#define y second')
let l = l + 1 | call setline(l, '#define mp make_pair')
let l = l + 1 | call setline(l, '#define pb push_back')
let l = l + 1 | call setline(l, '#define DEBUG')
let l = l + 1 | call setline(l, 'template<class T> void rd(T&ret){ret=0;bool ok=0,u=0;for(;;){int c=getchar();if(c>=''0''&&c<=''9'')ret=(ret<<3)+(ret<<1)+c-''0'',ok=1;else if(c==''-'')u=1;else if(ok){if(u)ret*=-1;return;}}}')
let l = l + 1 | call setline(l, 'long long pow_mod(long long p,long long n,long long mod){long long ret=1;for(;n;n>>=1){if(n&1)ret=ret*p%mod;p=p*p%mod;}return ret;}')
let l = l + 1 | call setline(l, 'template <class T> bool chmin(T& a, const T &b) {return b < a? a = b, 1: 0;}')
let l = l + 1 | call setline(l, 'template <class T> bool chmax(T& a, const T &b) {return b > a? a = b, 1: 0;}')
let l = l + 1 | call setline(l, 'typedef long long ll;')
let l = l + 1 | call setline(l, 'typedef pair<int, int> pii;')
let l = l + 1 | call setline(l, 'typedef vector<int> vi;')
let l = l + 1 | call setline(l, 'typedef vector<pii > vii;')
let l = l + 1 | call setline(l, '/****head****/')
let l = l + 1 | call setline(l, 'int main(){')
let l = l + 1 | call setline(l, '    return 0;')
let l = l + 1 | call setline(l, '}')

elseif &filetype == 'java'

let l = 0
let l = l + 1 | call setline(l, 'import java.io.*;')
let l = l + 1 | call setline(l, 'import java.math.*;')
let l = l + 1 | call setline(l, 'import java.util.*;')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, 'public class '.expand('%:r').' {')
let l = l + 1 | call setline(l, '        public void run() {')
let l = l + 1 | call setline(l, '                writer.close();')
let l = l + 1 | call setline(l, '        }')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, '        '.expand('%:r').'() {')
let l = l + 1 | call setline(l, '                //try {')
let l = l + 1 | call setline(l, '                        reader = new InputReader(System.in);')
let l = l + 1 | call setline(l, '                        writer = new PrintWriter(System.out);')
let l = l + 1 | call setline(l, '                        //reader = new InputReader(new FileInputStream("tst.in"));')
let l = l + 1 | call setline(l, '                        //writer = new PrintWriter(new File("tst.out"));')
let l = l + 1 | call setline(l, '                //} catch(FileNotFoundException ex) {')
let l = l + 1 | call setline(l, '                //}')
let l = l + 1 | call setline(l, '        }')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, '        public static void main(String[] args) {')
let l = l + 1 | call setline(l, '                new '.expand('%:r').'().run();')
let l = l + 1 | call setline(l, '        }')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, '        private static void debug(Object...os) {')
let l = l + 1 | call setline(l, '                System.err.println(Arrays.deepToString(os));')
let l = l + 1 | call setline(l, '        }')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, '        private InputReader reader;')
let l = l + 1 | call setline(l, '        private PrintWriter writer;')
let l = l + 1 | call setline(l, '}')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, 'class InputReader {')
let l = l + 1 | call setline(l, '        public InputReader(InputStream stream) {')
let l = l + 1 | call setline(l, '                this.stream = stream;')
let l = l + 1 | call setline(l, '        }')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, '        public int nextChar() {')
let l = l + 1 | call setline(l, '                if (charCount == -1)')
let l = l + 1 | call setline(l, '                        throw new InputMismatchException();')
let l = l + 1 | call setline(l, '                if (head >= charCount) {')
let l = l + 1 | call setline(l, '                        head = 0;')
let l = l + 1 | call setline(l, '                        try {')
let l = l + 1 | call setline(l, '                                charCount = stream.read(buffer);')
let l = l + 1 | call setline(l, '                        } catch (IOException e) {')
let l = l + 1 | call setline(l, '                                throw new InputMismatchException();')
let l = l + 1 | call setline(l, '                        }')
let l = l + 1 | call setline(l, '                        if (charCount <= 0) return -1;')
let l = l + 1 | call setline(l, '                }')
let l = l + 1 | call setline(l, '                return buffer[head ++];')
let l = l + 1 | call setline(l, '        }')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, '        public String nextStr() {')
let l = l + 1 | call setline(l, '                int c = nextChar();')
let l = l + 1 | call setline(l, '                while (isSpaceChar(c)) {')
let l = l + 1 | call setline(l, '                        c = nextChar();')
let l = l + 1 | call setline(l, '                }')
let l = l + 1 | call setline(l, '                StringBuilder ret = new StringBuilder();')
let l = l + 1 | call setline(l, '                do {')
let l = l + 1 | call setline(l, '                        ret.append((char)c);')
let l = l + 1 | call setline(l, '                        c = nextChar();')
let l = l + 1 | call setline(l, '                } while(!isSpaceChar(c));')
let l = l + 1 | call setline(l, '                return ret.toString();')
let l = l + 1 | call setline(l, '        }')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, '        public int nextInt() {')
let l = l + 1 | call setline(l, '                int c = nextChar();')
let l = l + 1 | call setline(l, '                while (isSpaceChar(c)) {')
let l = l + 1 | call setline(l, '                        c = nextChar();')
let l = l + 1 | call setline(l, '                }')
let l = l + 1 | call setline(l, '                int sign = 1;')
let l = l + 1 | call setline(l, '                if (c == ''-'') {')
let l = l + 1 | call setline(l, '                        sign = -1;')
let l = l + 1 | call setline(l, '                        c = nextChar();')
let l = l + 1 | call setline(l, '                }')
let l = l + 1 | call setline(l, '                int result = 0;')
let l = l + 1 | call setline(l, '                do {')
let l = l + 1 | call setline(l, '                        if (c < ''0'' || c > ''9'') {')
let l = l + 1 | call setline(l, '                                throw new InputMismatchException();')
let l = l + 1 | call setline(l, '                        }')
let l = l + 1 | call setline(l, '                        result *= 10;')
let l = l + 1 | call setline(l, '                        result += c - ''0'';')
let l = l + 1 | call setline(l, '                        c = nextChar();')
let l = l + 1 | call setline(l, '                } while (!isSpaceChar(c));')
let l = l + 1 | call setline(l, '                return sign * result;')
let l = l + 1 | call setline(l, '        }')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, '        public boolean isSpaceChar(int c) {')
let l = l + 1 | call setline(l, '                return c == '' '' || c == ''\n'' || c == ''\r'' || c == ''\t'' || c == -1;')
let l = l + 1 | call setline(l, '        }')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, '        private InputStream stream;')
let l = l + 1 | call setline(l, '        private int head, charCount;')
let l = l + 1 | call setline(l, '        private byte[] buffer = new byte[1024];')
let l = l + 1 | call setline(l, '}')
        
elseif &filetype == 'haskell'
let l = 0
let l = l + 1 | call setline(l, 'import Control.Applicative')
let l = l + 1 | call setline(l, 'import Control.Monad')
let l = l + 1 | call setline(l, 'import Data.Maybe')
let l = l + 1 | call setline(l, 'import Debug.Trace')
let l = l + 1 | call setline(l, 'import qualified Data.ByteString.Char8 as C')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, 'readInt :: C.ByteString -> Int')
let l = l + 1 | call setline(l, 'readInt = fst . fromJust . C.readInt')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, 'getInts :: IO [Int]')
let l = l + 1 | call setline(l, 'getInts = map readInt . C.words <$> C.getLine')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, 'getInt :: IO Int')
let l = l + 1 | call setline(l, 'getInt = readInt <$> C.getLine')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, 'main :: IO ()')
let l = l + 1 | call setline(l, 'main = do')
let l = l + 1 | call setline(l, '')

endif
endfunc

map <f7> :call CR4()<cr><space>
func CR4()
let l = 0
let l = l + 1 | call setline(l, '/*')
let l = l + 1 | call setline(l, ' * Author:  Plumrain')
let l = l + 1 | call setline(l, ' * Created Time:  '.strftime('%c'))
let l = l + 1 | call setline(l, ' * File Name: '.expand('%'))
let l = l + 1 | call setline(l, ' */')
let l = l + 1 | call setline(l, '#include <iostream>')
let l = l + 1 | call setline(l, '#include <cstdio>')
let l = l + 1 | call setline(l, '#include <cstring>')
let l = l + 1 | call setline(l, '#include <string>')
let l = l + 1 | call setline(l, '#include <cmath>')
let l = l + 1 | call setline(l, '#include <algorithm>')
let l = l + 1 | call setline(l, '#include <vector>')
let l = l + 1 | call setline(l, '#include <cstdlib>')
let l = l + 1 | call setline(l, '#include <sstream>')
let l = l + 1 | call setline(l, '#include <fstream>')
let l = l + 1 | call setline(l, '#include <functional>')
let l = l + 1 | call setline(l, '#include <list>')
let l = l + 1 | call setline(l, '#include <deque>')
let l = l + 1 | call setline(l, '#include <queue>')
let l = l + 1 | call setline(l, '#include <stack>')
let l = l + 1 | call setline(l, '#include <map>')
let l = l + 1 | call setline(l, '#include <set>')
let l = l + 1 | call setline(l, '#include <bitset>')
let l = l + 1 | call setline(l, '#include <cctype>')
let l = l + 1 | call setline(l, '#include <ctime>')
let l = l + 1 | call setline(l, '#include <utility>')
let l = l + 1 | call setline(l, '#include <complex>')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, 'using namespace std;')
let l = l + 1 | call setline(l, '')
"let l = l + 1 | call setline(l, '#define clr(x) memset(x, 0, sizeof(x))')
let l = l + 1 | call setline(l, '#define pb push_back')
let l = l + 1 | call setline(l, '#define mp make_pair')
let l = l + 1 | call setline(l, '#define x first')
let l = l + 1 | call setline(l, '#define y second')
let l = l + 1 | call setline(l, '#define sz(v) ((int)(v).size())')
let l = l + 1 | call setline(l, '#define all(t) t.begin(),t.end()')
let l = l + 1 | call setline(l, '#define clr(x,y) memset(x, y, sizeof(x))')
let l = l + 1 | call setline(l, '#define unq(x) sort(all(x)),(x).erase(unique(all(x)),(x).end())')
let l = l + 1 | call setline(l, '#define posin(x,y) (0 <= (x) && (x) < n && 0 <= (y) && (y) < m)')
"let l = l + 1 | call setline(l, '#define two(x) (1<<(x))')
"let l = l + 1 | call setline(l, '#define twol(x) (1ll<<(x))')
"let l = l + 1 | call setline(l, '#define INF 999999999999999999LL')
"let l = l + 1 | call setline(l, '#define zero(x) (((x)>0?(x):-(x))<eps)')
" let l = l + 1 | call setline(l, '#define rep(i, n) for(int i = 0; i < (n); i ++)')
let l = l + 1 | call setline(l, '#define rep(i, a, b) for(int i = (a); i <= (int)(b); i ++)')
let l = l + 1 | call setline(l, '#define red(i, a, b) for(int i = (a); i >= (int)(b); i --)')
let l = l + 1 | call setline(l, '#define repcase int T, cas = 0; for (scanf ("%d", &T); T; --T)')
let l = l + 1 | call setline(l, '#define snuke(i,x) for (__typeof((x).begin()) i = (x).begin(); i != (x).end(); ++i)')
let l = l + 1 | call setline(l, '#define reptest(a,n) tst1(a); for (int i = 0; i < (int)(n); ++ i) tst (a[i]); cout << endl;')
" let l = l + 1 | call setline(l, '#define flin freopen( "a.in" , "r" , stdin )')
" let l = l + 1 | call setline(l, '#define flout freopen( "a.out" , "w" , stdout )')
let l = l + 1 | call setline(l, '#define out(x) cout<<#x<<":"<<(x)<<endl')
let l = l + 1 | call setline(l, '#define tst(a) cout<<a<<" "')
let l = l + 1 | call setline(l, '#define tst1(a) cout<<#a<<endl')
" let l = l + 1 | call setline(l, '#define CINBEQUICKER std::ios::sync_with_stdio(false)')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, 'typedef long long ll;')
let l = l + 1 | call setline(l, 'typedef vector<int> vi;')
let l = l + 1 | call setline(l, 'typedef vector<string> vs;')
let l = l + 1 | call setline(l, 'typedef pair<int, int> pii;')
let l = l + 1 | call setline(l, 'typedef vector<pii > vii;')
let l = l + 1 | call setline(l, 'typedef complex<double> CD;')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, 'const double eps = 1e-10;')
let l = l + 1 | call setline(l, 'const double PI = atan(1.0)*4;')
let l = l + 1 | call setline(l, 'const int inf = ~0u>>1;')
let l = l + 1 | call setline(l, 'const int Dx[]={1,0,-1,0}, Dy[]={0,1,0,-1};')
"let l = l + 1 | call setline(l, '//const int inf = 2139062143;')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, 'template <class T> bool chmin(T& a, const T &b) {return b < a? a = b, 1: 0;}')
"let l = l + 1 | call setline(l, 'template <class T> bool chmin(T &t,T x){if (x < t) t = x;}')
let l = l + 1 | call setline(l, 'template <class T> bool chmax(T& a, const T &b) {return b > a? a = b, 1: 0;}')
"let l = l + 1 | call setline(l, 'template <class T> bool chmax(T &t,T x){if (x > t) t = x;}')
let l = l + 1 | call setline(l, 'template <class T> int sgn(T x) { return (x > eps) - (x < -eps);}')
let l = l + 1 | call setline(l, '/*head*/')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, 'int main()')
let l = l + 1 | call setline(l, '{')
let l = l + 1 | call setline(l, '        //freopen("a.in","r",stdin);')
let l = l + 1 | call setline(l, '        //freopen("a.out","w",stdout);')
" let l = l + 1 | call setline(l, '    //std::ios::sync_with_stdio(false);')
let l = l + 1 | call setline(l, '')
let l = l + 1 | call setline(l, '    return 0;')
let l = l + 1 | call setline(l, '}')
endfunc

map<f4> :call AddComment()<cr>
func AddComment()
if &filetype == 'cpp'
    if matchstr(getline('.'), '[^ ]') == '/'
        normal ^xxx
    else
        normal ^i// 
    endif
elseif &filetype == 'java'
    if matchstr(getline('.'), '[^ ]') == '/'
        normal ^xx
    else
        normal ^i//
    endif
elseif &filetype == 'haskell'
    if matchstr(getline('.'), '[^ ]') == '-'
        normal ^xxx
    else
        normal ^i-- 
    endif
elseif &filetype == 'matlab'
    if matchstr(getline('.'), '[^ ]') == '%'
        normal ^x
    else
        normal ^i%
    endif
elseif &filetype == 'python'
    if matchstr(getline('.'), '[^ ]') == '#'
        normal ^x
    else
        normal ^i#
    endif
endif
endfunc

map<f3> :call AddDebug()<cr>
func AddDebug()
if &filetype == 'cpp'
        normal o#ifdef DEBUG
        normal o#endif
        normal O
endif
endfunc
