use Rack::Static,
  :urls => ["/images", "/reveal.js"],
  :root => "automating-development-using-grunt"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('automating-development-using-grunt/index.html', File::RDONLY)
  ]
}