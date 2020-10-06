Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://limitless-island-64191.herokuapp.com/'

    resource 'https://limitless-island-64191.herokuapp.com/',
      headers: :any,
      credentials: true,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end