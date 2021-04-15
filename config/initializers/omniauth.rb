# Required to allow get requests, which enables a security flaw but that's how the tutorial is set up.
OmniAuth.config.allowed_request_methods = [:post, :get]
OmniAuth.config.silence_get_warning = true

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :twitter, "lbxgA4yt9cJHNMTatY1zzKhZu", "mnCThkF90J6nJjTZPCC93SxtjKStv5sCk5kEFfS9tTxINSMM4f"
  end