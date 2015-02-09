Gem::Specification.new do |gem|
	gem.name = "linear1"
	gem.author = "Zachary Perlmutter"
	gem.email = "zrp200@gmail.com"
	gem.summary = "Does linear algebra, to an extent"
	if ENV['TRAVIS'] then gem.version = ENV['TRAVIS_TAG'] == String.new ? ENV['TRAVIS_BUILD_ID'] : ENV['TRAVIS_TAG']
	else gem.version = STDIN.gets
	end
	gem.homepage = "https://github.com/Zrp200/linear1"
	gem.license = "MIT"
	gem.files = Dir["lib/**/*.rb"]
	gem.extra_rdoc_files = Dir["*.md"]
	gem.test_files = Dir["spec/**/*spec.rb"]
 	gem.executables << "linear1"
 	gem.add_development_dependency "rspec", "~> 3.1"
 	gem.add_development_dependency "rspec-its", "~> 1.1"
end
