Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://cryptic-springs-62937.herokuapp.com/'

    resource 'https://cryptic-springs-62937.herokuapp.com/',
      headers: :any,
      credentials: true,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end