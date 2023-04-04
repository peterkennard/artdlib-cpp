myDir = File.dirname(File.expand_path(__FILE__));
require "#{myDir}/build-options.rb";
require "rakish/GitModule";

module Rakish

dependsList = [];

unless inSetupTask()
  #  cfg = BuildConfig("root");

   dependsList << './artd-lib-logger';
   dependsList << './artd-lib-vecmath';
   dependsList << './artd-jlib-base';
   dependsList << './artd-jlib-thread';
   dependsList << './artd-jlib-io';
   dependsList << './artd-jlib-net';
end

Rakish.Project(
    :includes    => [Rakish::GitModule],
	:name 		 => "artdlib-cpp",
    :dependsUponOpt => dependsList
) do

    export task :setup => [] do
 	git.clone("https://github.com/peterkennard/artd-lib-logger.git", "#{projectDir}/artd-lib-logger");
    	git.clone("https://github.com/peterkennard/artd-jlib-base", "#{projectDir}/artd-jlib-base");
    	git.clone("https://github.com/peterkennard/artd-jlib-thread.git", "#{projectDir}/artd-jlib-thread");
    	git.clone("https://github.com/peterkennard/artd-lib-vecmath.git", "#{projectDir}/artd-lib-vecmath");
    	git.cloneIfAvailable("https://github.com/peterkennard/artd-jlib-io.git", "#{projectDir}/artd-jlib-io");
    	git.cloneIfAvailable("git.livingwork.com:/home/artd/github/artf-jlib-net.git", "#{projectDir}/artd-jlib-net");
    end

end

end # Rakish
