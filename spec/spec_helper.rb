# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

# Checks for pending migrations before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

RSpec.configure do |config|
  # ## Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = "random"

  def select_ship_placements
    select "A", from: 'board_aircraft_carrier_position_column'
    select "B", from: 'board_battleship_position_column'
    select "C", from: 'board_submarine_position_column'
    select "D", from: 'board_cruiser_position_column'
    select "E", from: 'board_destroyer_position_column'

    select "1", from: 'board_aircraft_carrier_position_row'
    select "1", from: 'board_battleship_position_row'
    select "1", from: 'board_submarine_position_row'
    select "1", from: 'board_cruiser_position_row'
    select "1", from: 'board_destroyer_position_row'

    select "right", from: 'board_aircraft_carrier_orientation'
    select "right", from: 'board_battleship_orientation'
    select "right", from: 'board_submarine_orientation'
    select "right", from: 'board_cruiser_orientation'
    select "right", from: 'board_destroyer_orientation'
  end
end
