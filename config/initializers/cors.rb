Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://enigmatic-dusk-91030.herokuapp.com/'

    resource 'https://enigmatic-dusk-91030.herokuapp.com/',
      headers: :any,
      credentials: true,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end