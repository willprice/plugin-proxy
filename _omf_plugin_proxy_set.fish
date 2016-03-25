function _omf_plugin_proxy_set -a proxy_url \
  -d "Set all proxy vars to specified value"

  set -l envars http_proxy HTTP_PROXY \
                https_proxy HTTPS_PROXY \
                ftp_proxy FTP_PROXY \
                all_proxy ALL_PROXY

  for envar in $envars
    if test "$proxy_url" = '-e'
      set --erase $envar
    else
      set --global --export $envar "$proxy_url"
    end
  end
end
