# frozen_string_literal: true

require 'spec_helper'

RSpec.describe GetText::MoteParser do
  it 'has a version number' do
    expect(GetText::MoteParser::VERSION).not_to be nil
  end

  it 'init the parser with a mandatory parameter' do
    expect { GetText::MoteParser.init }.to raise_error(ArgumentError)
  end

  it 'set a valid default extension for Mote template files' do
    expect(true).to eq(GetText::MoteParser.target?('template.mote'))
    expect(false).to eq(GetText::MoteParser.target?('template.not_mote'))
  end

  it 'validate a custom extension file for the parser' do
    GetText::MoteParser.init(extnames: %w[.mote .mt])
    expect(true).to eq(GetText::MoteParser.target?('template.mote'))
    expect(true).to eq(GetText::MoteParser.target?('template.mt'))
  end

  it 'parse mote file as expected' do
    dir_name = File.expand_path(File.join('..', 'templates'),
                                File.dirname(__FILE__))
    template_file = File.join(dir_name, 'template.mote')
    expect(File.file?(template_file)).to be_truthy

    po_data = GetText::MoteParser.parse(template_file)

    expect(po_data.map(&:msgid)).to include('rhymes with Piano',
                                            'rhymes with Opus')
  end
end
