# encoding: utf-8
# copyright: 2015, awim / mtaqwim
# license: All rights reserved

title 'Confirm the user that permitted to select a table'
control 'oracle-4.0' do
  impact 0.3
  title "verify table"
  desc 'G'

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
