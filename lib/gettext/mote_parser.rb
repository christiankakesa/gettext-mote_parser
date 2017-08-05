# frozen_string_literal: true

require_relative 'mote_parser/mote_parser'

# Register GetText::MoteParser
require 'gettext/tools/xgettext'
GetText::Tools::XGetText.add_parser(GetText::MoteParser)
