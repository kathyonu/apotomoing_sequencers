#!/usr/bin/env ruby -w

##  AN ORIGNIAL MASTER, DO NOT CHANGE ONE IOTA.
##  FILE NAME : /desideratus/apotomoing_sequencers/app/lib/textual-fiber-methods.rb   < mysqlbranch : 20110805
## Run in Terminal in your app directory, $ rails c -s     : this will run the console in the sandbox, all changes will be rolled back on exit.
## Run in the console, this require statement > require "./lib/sequencerings/textual-fiber-methods.rb"

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