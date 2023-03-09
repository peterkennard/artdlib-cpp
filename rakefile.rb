myDir = File.dirname(File.expand_path(__FILE__));
require "#{myDir}/build-options.rb";

module Rakish

  #  cfg = BuildConfig("root");

Rakish.Project(
    :includes    => [Rakish::GitModule],
	:name 		 => "artdlib-cpp",
    :dependsUpon => [
        './artd-lib-logger'
    ],
    :dependsUponOpt => [
	    './artd-jlib-base'
    ]
) do

    export task :setup => [] do
    	git.clone("git.livingwork.com:/home/artd/newartd/artd-jlib-base", "#{projectDir}/artd-jlib-base");
    end

end

end # Rakish
