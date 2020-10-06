Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://safe-ocean-96942.herokuapp.com/'

    resource 'https://safe-ocean-96942.herokuapp.com/',
      headers: :any,
      credentials: true,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end