# encoding: utf-8
# copyright: 2015, DEMO Team Verint
# license: All rights reserved

oracle_install_dir = '/u01/app/oracle'

title "verify directory #{oracle_install_dir} owned by user oracle:dba"
control 'oracle-0.1' do
  title "is #{oracle_install_dir} owned by oracle:dba as default?"
  desc 'B'

  describe file(oracle_install_dir) do
    it { should be_owned_by 'oracle' }
    it { should be_grouped_into 'dba' }
  end
end