require 'csv'

namespace :import_csv do

  desc "CSVデータをインポートするタスク"

  task users: :environment do
    ImportCsv.users_data
  end
end
