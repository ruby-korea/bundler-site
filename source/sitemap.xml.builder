BASE_URL = 'http://ruby-korea.github.io/bundler-site/'

xml.instruct!
xml.urlset 'xmlns' => 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  xml.url do
    xml.loc 'http://ruby-korea.github.io/bundler-site'
    xml.lastmod Time.now.utc.iso8601
    xml.changefreq 'weekly'
    xml.priority 1.0
  end

  documents = sitemap.resources.select do |resource|
    resource.ext.eql? '.html'
  end

  documents.each do |resource|
    xml.url do
      xml.loc URI.join(BASE_URL, resource.url)
    end
  end

  versions = 'v1.0'.upto('v1.9')
  man_files = [
    'bundle-config.1.html',
    'bundle-exec.1.html',
    'bundle-install.1.html',
    'bundle-package.1.html',
    'bundle-platform.1.html',
    'bundle-update.1.html',
    'bundle.1.html',
    'gemfile.5.html'
  ]

  versions.each do |version|
    man_files.each do |path|
      xml.url do
        xml.loc URI.join(BASE_URL, version + '/', 'man/', path)
      end
    end
  end
end
