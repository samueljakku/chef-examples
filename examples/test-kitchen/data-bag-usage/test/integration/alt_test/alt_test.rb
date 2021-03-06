control 'tmp_file_creation' do
  impact 0.1
  title 'tmp_file_creation'
  desc 'Files should be created under /tmp based on data_bag item values.'

  %w(key1_value_alt key2_value_alt).each do |f|
    describe file("/tmp/#{f}") do
      it { should exist }
    end
  end
end
