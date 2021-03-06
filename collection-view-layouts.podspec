#
# Be sure to run `pod lib lint collection-view-layouts.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'collection-view-layouts'
  s.version          = '0.1.2'
  s.summary          = 'Collection view custom flow layouts'
  s.description      = 'A set of custom collection view flow layouts.'

  s.homepage         = 'https://github.com/rubygarage/collection-view-layouts'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sergey.afanasiev' => 'sergey.afanasiev@rubygarage.org' }
  s.source           = { :git => 'https://github.com/rubygarage/collection-view-layouts.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
    
  s.subspec 'Core' do |core|
    core.source_files = 'collection-view-layouts/Classes/Core/*.swift'
    core.ios.frameworks = 'UIKit'
  end

  s.subspec 'TagsLayout' do |tags_layout|
    tags_layout.dependency 'collection-view-layouts/Core'
    tags_layout.source_files = 'collection-view-layouts/Classes/TagsStyleFlowLayout/*.swift'
  end

  s.subspec 'PinterestLayout' do |pinterest_layout|
    pinterest_layout.dependency 'collection-view-layouts/Core'
    pinterest_layout.source_files = 'collection-view-layouts/Classes/PinterestStyleFlowLayout/*.swift'
  end

  s.subspec 'Px500Layout' do |px500_layout|
    px500_layout.dependency 'collection-view-layouts/Core'
    px500_layout.source_files = 'collection-view-layouts/Classes/Px500StyleFlowLayout/*.swift'
  end

  s.subspec 'InstagramLayout' do |instagram_layout|
    instagram_layout.dependency 'collection-view-layouts/Core'
    instagram_layout.source_files = 'collection-view-layouts/Classes/InstagramStyleFlowLayout/*.swift'
  end

  s.subspec 'FlipboardLayout' do |flipboard_layout|
    flipboard_layout.dependency 'collection-view-layouts/Core'
    flipboard_layout.source_files = 'collection-view-layouts/Classes/FlipboardStyleFlowLayout/*.swift'
  end

  s.subspec 'FacebookLayout' do |facebook_layout|
    facebook_layout.dependency 'collection-view-layouts/Core'
    facebook_layout.source_files = 'collection-view-layouts/Classes/FacebookStyleFlowLayout/*.swift'
  end

  s.subspec 'FlickrLayout' do |flickr_layout|
    flickr_layout.dependency 'collection-view-layouts/Core'
    flickr_layout.source_files = 'collection-view-layouts/Classes/FlickrStyleFlowLayout/*.swift'
  end
end
