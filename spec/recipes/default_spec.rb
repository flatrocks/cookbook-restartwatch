require_relative '../spec_helper'

describe 'restartwatch::default' do
  subject { ChefSpec::SoloRunner.new.converge(described_recipe) }

  describe 'the conf file' do
    let(:filename) {'/etc/logwatch/conf/services/restart.conf'}

    it 'is created' do
      expect(subject).to create_cookbook_file(filename)
    end

    it 'has the right owner and group' do
      expect(subject).to create_cookbook_file(filename).with_owner('root')
      expect(subject).to create_cookbook_file(filename).with_group('root')
    end

    it 'has the right mode' do
      expect(subject).to create_cookbook_file(filename).with_mode 0644
    end

  end

  describe 'the log config file' do
    let(:filename) {'/etc/logwatch/conf/logfiles/restart_logs.conf'}

    it 'is created' do
      expect(subject).to create_cookbook_file(filename)
    end

    it 'has the right owner and group' do
      expect(subject).to create_cookbook_file(filename).with_owner('root')
      expect(subject).to create_cookbook_file(filename).with_group('root')
    end

    it 'has the right mode' do
      expect(subject).to create_cookbook_file(filename).with_mode 0644
    end

  end

  describe 'the script file' do
    let(:filename) {'/etc/logwatch/scripts/services/restart'}

    it 'is created' do
      expect(subject).to create_cookbook_file(filename)
    end

    it 'has the right owner and group' do
      expect(subject).to create_cookbook_file(filename).with_owner('root')
      expect(subject).to create_cookbook_file(filename).with_group('root')
    end

    it 'has the right mode' do
      expect(subject).to create_cookbook_file(filename).with_mode 0755
    end

  end


end
