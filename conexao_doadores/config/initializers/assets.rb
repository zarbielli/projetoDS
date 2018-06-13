# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile += %w( conexao_doadores.css )
Rails.application.config.assets.precompile += %w( pe-icon-7-stroke.css )
Rails.application.config.assets.precompile += %w( conexao_doadores.js )
Rails.application.config.assets.precompile += %w( login-register.css )
Rails.application.config.assets.precompile += %w( login-register.js )
Rails.application.config.assets.precompile += %w( modernizr.min.js )
Rails.application.config.assets.precompile += %w( cambo_poppins.css )
Rails.application.config.assets.precompile += %w( jquery-ui.min.js )
Rails.application.config.assets.precompile += %w( bootstrap3-7.min.css )
Rails.application.config.assets.precompile += %w( bootstrap3-7.min.js )
Rails.application.config.assets.precompile += %w( bootstrap4.min.css )
Rails.application.config.assets.precompile += %w( bootstrap4.min.js )
Rails.application.config.assets.precompile += %w( paper-dashboard.css )
Rails.application.config.assets.precompile += %w( animate.min.css )
Rails.application.config.assets.precompile += %w( themify-icons.css )
Rails.application.config.assets.precompile += %w( themify-icons.js )
Rails.application.config.assets.precompile += %w( jquery-1.10.2.js )
Rails.application.config.assets.precompile += %w( bootstrap-checkbox-radio.js )
Rails.application.config.assets.precompile += %w( chartist.min.js )
Rails.application.config.assets.precompile += %w( bootstrap-notify.js )
Rails.application.config.assets.precompile += %w( paper-dashboard.js )

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
