myDir = File.dirname(File.expand_path(__FILE__));
require "#{myDir}/build-options.rb";
require "rakish/GitModule";

module Rakish

dependsList = [];

  #  cfg = BuildConfig("root");

    dependsList << './artd-lib-logger';
    dependsList << './artd-jlib-base';

Rakish.Project(
    :includes    => [Rakish::GitModule],
	:name 		 => "artdlib-cpp",
    :dependsUpon => dependsList
) do

    export task :setup => [] do
    	git.clone("git.livingwork.com:/home/artd/newartd/artd-jlib-base", "#{myDir}/artd-jlib-base");
    end

end

end # Rakish
