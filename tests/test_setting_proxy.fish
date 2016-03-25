function suite_proxy
    set --global proxy "http://proxy.example.com:3128"

    function teardown
        noproxy
    end

    function test_setting_http_proxy_environment_variable
        proxy
        assert_equal "$proxy" "$http_proxy"
        assert_equal "$proxy" "$HTTP_PROXY"
    end

    function test_setting_https_proxy_environment_variable
        proxy
        assert_equal "$proxy" "$https_proxy"
        assert_equal "$proxy" "$HTTPS_PROXY"
    end

    function test_setting_all_proxy_environment_variable
        proxy
        assert_equal "$proxy" "$all_proxy"
        assert_equal "$proxy" "$ALL_PROXY"
    end
    function test_setting_ftp_proxy_environment_variable
        proxy
        assert_equal "$proxy" "$ftp_proxy"
        assert_equal "$proxy" "$FTP_PROXY"
    end
end
