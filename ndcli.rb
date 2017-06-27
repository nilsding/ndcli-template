# transform snake_case into CamelCase - borrowed from example quikstart scripts :-)
def camelize(str)
  str.gsub(/(?:^|_)([a-z])/i) { $1.upcase }
end

# generate a nice name, because naming is hard apparently
parts = %w(
  awesome epic great best word excel powerpoint office internet_explorer
  paint photoshop fox wolf dog coyote woof awoo bark bork yip yap yiff
  image video answer question retrospring sausage oachkatzlschwoaf bier
  pretzel emacs vim notepad slack twitter reddit ruby diamond gem humor
  lol internet melli17 blue green red black yellow orange magenta white
)
awesome_name = parts.shuffle.take(2).join("_")

say "*** nilsding's CLI template ***"

name = ask("How should I name your app? (snake_case)", awesome_name)

use "nilsding/ndcli-template"

config do |c|
  c.name         = name
  c.class        = camelize(name)
  c.current_year = Time.now.year.to_s
  c.user         = ENV.fetch("USER", "Anonymous Coward")
end
