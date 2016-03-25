proxy plugin
============
[![Build
Status](https://travis-ci.org/willprice/plugin-proxy.svg?branch=master)](https://travis-ci.org/willprice/plugin-proxy)

The proxy plugin provides a couple helper functions to those of us who are
stuck behind HTTP/HTTPS/FTP proxies that require authentication.  The variables
it exports are used by many command-line and GUI applications on Linux, as well
as [MacPorts][1] and [Homebrew][2] on OS X.

Both uppercase and lowercase versions of the proxy environment variables are
set, some applications are case sensitive.  If you'd like to learn more about
the use of these variables, this [Arch Wiki Article][3] is a good place to
start.

## Usage

In all cases you will need to add 'proxy' to your fish_plugins list in
config.fish

### Configuration

If you just want to have the proxy plugin configure all the environment
variables, you may set `proxy`:

    set proxy http://myproxy.example.com:8000

Here's the result:

    ~> set -x |grep proxy
    ALL_PROXY http://myproxy.example.com:8000
    FTP_PROXY http://myproxy.example.com:8000
    HTTPS_PROXY http://myproxy.example.com:8000
    HTTP_PROXY http://myproxy.example.com:8000
    all_proxy http://myproxy.example.com:8000
    ftp_proxy http://myproxy.example.com:8000
    http_proxy http://myproxy.example.com:8000
    https_proxy http://myproxy.example.com:8000

If you wish to clear your proxy variables, run `noproxy`.

[1]: http://www.macports.org/
[2]: http://brew.sh/
[3]: https://wiki.archlinux.org/index.php/proxy_settings
