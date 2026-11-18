let carapace_completer = {|place|
    carapace $place.command.0 nushell ...$place.command | from json
}
$env.config = {
 show_banner: false,
 completions: {
 case_sensitive: false
 quick: true
 partial: true
 sort: "smart"
 algorithm: "fuzzy"
 external: {
     enable: true
     max_results: 100
     completer: $carapace_completer
   }
 }
}
