xml.instruct!
xml.urlset 'xmlns' => 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  xml.url do
    xml.loc 'http://ruby-korea.github.io/bundler-site'
    xml.lastmod Time.now.utc.iso8601
    xml.changefreq 'weekly'
    xml.priority 1.0
  end
  sitemap.resources.select{ |resource| resource.ext.eql? '.html' }.each do |resource|
    xml.url do
      xml.loc URI.join('http://ruby-korea.github.io/bundler-site', resource.url)
    end
  end
end
