require 'slop'

require "git-rollback/version"

class GitRollback
  attr_reader :config

  def initialize
    @config = {}
  end

  def run(opts, argv)
    process_argv(argv)

    command = ['git', 'reset']
    command << (opts.hard? ? '--hard' : '--soft')
    command << "HEAD~#{config[:n]}"

    system(*command)
  end

  def process_argv(argv)
    case argv
    when []
      config[:n] = 1
    else
      config[:n] = argv.first || '1'
    end
  end
end
