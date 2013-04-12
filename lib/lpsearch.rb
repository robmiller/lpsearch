# encoding: utf-8

require 'rubygems' if RUBY_VERSION < "1.9"
require 'bundler/setup'

require 'liquidplanner'
require 'highline/import'
require 'json'

class LPSearch
	def initialize
		@creds = {}
		@creds_file = File.expand_path "~/.lprc"

		if File.readable? @creds_file
			get_credentials
		else
			ask_credentials
		end

		@lp = LiquidPlanner::Base.new({:email => @creds["email"], :password => @creds["pass"]})
		@workspace = @lp.workspaces @creds["space"]
	end

	def get_credentials
		json = IO.read(@creds_file)

		if json.length < 2
			ask_credentials
		end

		begin
			@creds = JSON.parse(json)
		rescue
		ensure
			ask_credentials unless @creds.length
		end
	end

	def ask_credentials
		unless stdin.tty?
			puts "I don't have a TTY. Run me from the command line first so I can get your LP credentials."
			exit
		end

		email = ask("Email: ") { |q| q.validate = /@/ }
		pass  = ask("Password: ") { |q| q.echo = "x" }
		space = ask("LP space ID: ") { |q| q.validate = /^[0-9]+$/ }

		@creds = { "email" => email, "pass" => pass, "space" => space }

		File.open(@creds_file, "w") { |f| f.write(@creds.to_json) }
	end

	def search(query)
		tasks = @workspace.tasks(:all, :limit => 5, :filter => "name contains '#{query}'")
		tasks.each do |task|
			t = {
				:name => task.name,
				:id => task.id,
				:description => task.description.empty? ? task.name : task.description,
				:url => "http://app.liquidplanner.com/space/#{@creds["space"]}/projects/show/#{task.id}"
			}

			yield t
		end
	end
end

