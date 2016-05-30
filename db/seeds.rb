countries = ['Afghanistan','Albania','Algeria','American Samoa','Andorra','Angola','Anguilla','Antigua Barbuda','Argentina','Armenia','Aruba','Australia','Austria','Azerbaijan']
countries.each {|name| Country.create(name: name)}

