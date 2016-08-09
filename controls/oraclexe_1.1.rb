# encoding: utf-8
# copyright: 2015, awim / mtaqwim
# license: All rights reserved

title 'is oracle-xe service has been enabled?'
control 'oracle-1.1' do
  title "is oracle-xe service has been enabled?"
  desc 'D'

  describe service('oracle-xe')   do
    it { should be_enabled }
  end
end
