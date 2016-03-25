function suite_noproxy
    function test_noproxy_clears_http_proxy_variable
        set --global http_proxy   "$proxy"
        set --global HTTP_PROXY   "$proxy"

        noproxy

        set -q $http_proxy
        assert_status 1
        set -q $HTTP_PROXY
        assert_status 1
    end

    function test_noproxy_clears_https_proxy_variable
        set --global https_proxy   "$proxy"
        set --global HTTPS_PROXY   "$proxy"

        noproxy

        set -q $https_proxy
        assert_status 1
        set -q $HTTPS_PROXY
        assert_status 1
    end

    function test_noproxy_clears_all_proxy_variable
        set --global all_proxy   "$proxy"
        set --global ALL_PROXY   "$proxy"

        noproxy

        set -q $all_proxy
        assert_status 1
        set -q $All_PROXY
        assert_status 1
    end

    function test_noproxy_clears_ftp_proxy_variable
        set --global ftp_proxy   "$proxy"
        set --global FTP_PROXY   "$proxy"

        noproxy

        set -q $ftp_proxy
        assert_status 1
        set -q $FTP_PROXY
        assert_status 1
    end
end
