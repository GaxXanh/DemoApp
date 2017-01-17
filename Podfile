PROJECT_NAME = 'DemoApp'
TEST_TARGET = 'DemoAppTests'
SCHEME_FILE = 'DemoAppTests.xcscheme'

target TEST_TARGET do
  project PROJECT_NAME

  use_frameworks!
  inherit! :search_paths
  pod 'EarlGrey'
end

post_install do |installer|
  require 'earlgrey'
  configure_for_earlgrey(installer, PROJECT_NAME, TEST_TARGET, SCHEME_FILE, {swift: true})
end
