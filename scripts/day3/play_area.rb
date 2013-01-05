require "yaml"

File.open( 'friends.yml' ){ |f|
    $arr= YAML.load(f)
}
p($arr)
