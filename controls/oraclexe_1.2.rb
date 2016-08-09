# encoding: utf-8
# copyright: 2015, DEMO Team Verint
# license: All rights reserved

title "is oracle service 'XE' run?"
control 'oracle-1.2' do
  title "is oracle service 'XE' run?"
  desc 'E'

  describe  service('oracle-xe') do
    it { should be_running }
  end
end