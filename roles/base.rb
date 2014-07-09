name "base"
description "Base Server Role"
run_list "recipe[chef-client::delete_validation]", "recipe[chef-client]",
"recipe[chef-client::config]","recipe[ntp]", "recipe[motd]", "recipe[users]"
default_attributes(
  "chef-client" => {
    "config" => {
      "ssl_verify_mode" => ":verify_peer"
    }
  },
  "ohai" => {
    "disabled_plugins" => [":Passwd"]
  }
)
