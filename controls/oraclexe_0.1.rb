# encoding: utf-8
# copyright: 2015, DEMO Team Verint
# license: All rights reserved

title 'verify directory /u01 is exist'
control 'oracle-0.1' do
  title "is /u01 directory existed?"
  desc 'A'

  describe file('/u01') do
    it { should be_directory }
  end
end