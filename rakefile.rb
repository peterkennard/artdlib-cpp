myDir = File.dirname(File.expand_path(__FILE__));
require "#{myDir}/build-options.rb";

module Rakish

dependsList = [];

  #  cfg = BuildConfig("root");

    dependsList << './artd-lib-logger';

Rakish.Project(
    :dependsUpon=>dependsList
) do

end

end # Rakish
