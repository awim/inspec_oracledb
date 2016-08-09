# encoding: utf-8
# copyright: 2015, DEMO Team Verint
# license: All rights reserved

title 'verify login as sysdba to database server'
control 'oracle-2.0' do
  impact 0.3
  title 'verify login as sysdba to database server'
  desc 'the target system should be connected to database server by sysdba administrator'

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