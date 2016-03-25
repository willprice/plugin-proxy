function proxy -d "Setup proxy environment variables"
  if not set -q proxy
    echo 'ERROR: You must set $proxy to your proxy string, e.g. http://proxy.example.com in config.fish'
    return
  else
    _omf_plugin_proxy_set "$proxy"
  end
end
