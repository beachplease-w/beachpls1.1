Rails.configuration.stripe = {
  publishable_key: ENV['pk_test_WL4ElkDlng4vp6WPuMltx4BM'],
  secret_key:      ENV['sk_test_KjMFJIOJqMCN4garxWoJ6NrZ']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
