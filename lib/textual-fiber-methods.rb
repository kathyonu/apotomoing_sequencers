#!/usr/bin/env ruby -w

# this file's methods are not used in the program : i used this for storing methods
# please see the /lib/mysqldatabase***.rb files for the most evolved fibers

## AN ORIGNIAL MASTER, DO NOT CHANGE ONE IOTA. This demonstrates the power of the fiber.
## FILE NAME : /desideratus/apotomoing_sequencers/app/lib/textual-fiber-methods.rb  : mysqlbranch : 20110805
## Run in Terminal in your app directory : 
##    $ rails c -s     : this will run the console in the sandbox, all changes will be rolled back on exit.
## Run this require statement in the console.
##    require "./lib/textual-fiber-methods.rb"
## to see fibers in use, see the lib/mysqldata*.rb files

include IRB
include Textual
include GC

require 'fiber'
require 'shell'
require 'open-uri'
require 'stringio'
require 'enumerator'
require 'io/wait'

  def fiber_demo
    consumer = Fiber.new do |producer, queue|
      5.times do
        while queue.size < 2
	      queue = producer.transfer(consumer, queue)
        end
      puts "Consume #{queue.shift} and #{queue.shift}"
    end
  end

    producer = Fiber.new do |consumer, queue|
      value = 1
	  loop do
	    puts "Producing more stuff"
		3.times { queue << value; value += 1 }
        puts "Queue size is #{queue.size}" 
        consumer.transfer queue
      end
    end
    consumer.transfer(producer, [])
  end