myDir = File.dirname(File.expand_path(__FILE__));
require "#{myDir}/build-options.rb";
require "rakish/GitModule";

module Rakish

dependsList = [];

  #  cfg = BuildConfig("root");

   dependsList << './artd-lib-logger';
   dependsList << './artd-lib-vecmath';
   dependsList << './artd-jlib-base';
   dependsList << './artd-jlib-thread';


Rakish.Project(
    :includes    => [Rakish::GitModule],
	:name 		 => "artdlib-cpp",
    :dependsUponOpt => dependsList
) do

    export task :setup => [] do
 	    git.clone("https://github.com/peterkennard/artd-lib-logger.git", "#{projectDir}/artd-lib-logger");
    	git.clone("git.livingwork.com:/home/artd/newartd/artd-jlib-base", "#{projectDir}/artd-jlib-base");
    	git.clone("git.livingwork.com:/home/artd/newartd/artd-jlib-thread", "#{projectDir}/artd-jlib-thread");
    	git.clone("git.livingwork.com:/home/artd/newartd/artd-lib-vecmath", "#{projectDir}/artd-lib-vecmath");
    end

end

end # Rakish
