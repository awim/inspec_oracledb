# encoding: utf-8
# copyright: 2015, DEMO Team Verint
# license: All rights reserved

require 'ohai'

title 'verify scheme user able to login'
control 'oracle-2.1' do
  impact 0.3
  title 'inject a specific user to login into database'
  desc 'F'

  # detach this line below if you want to debug
  # require 'pry'; binding.pry;

  params = {
      :host     => '10.180.202.136',
      :port     => '1521',
      :user     => 'sys',
      :pass     => 'xx***xx',
      :service  => 'XE',
      :role     => 'sysdba',
      :db_name  => nil
  }

  describe oraclexe(params) do
    it(:ping){should be_truthy}
  end

end