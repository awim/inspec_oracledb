# encoding: utf-8
# copyright: 2015, DEMO Team Verint
# license: All rights reserved

title 'is oracle-xe service has been installed'
control 'oracle-1.0' do
  title "is oracle-xe service has been installed?"
  desc 'C'

  describe service('oracle-xe') do
    it { should be_installed }
  end
end